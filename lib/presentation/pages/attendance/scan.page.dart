import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/presentation/widgets/snackbar.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:lecturer/application/attendance/scan/scan_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/presentation/widgets/animations/scanner_animation.widget.dart';
import 'package:lecturer/presentation/widgets/loader.widget.dart';
import 'package:lecturer/presentation/widgets/scan_confirmation.widget.dart';

/// Scan page
@RoutePage()
class ScanPage extends StatefulWidget implements AutoRouteWrapper {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ScanBloc>(),
      child: this,
    );
  }
}

class _ScanPageState extends State<ScanPage>
    with SingleTickerProviderStateMixin {
  /// Animation controller
  late AnimationController _animationCtrl;

  late MobileScannerController _scannerCtrl;

  @override
  void initState() {
    _animationCtrl =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    _scannerCtrl = MobileScannerController(
      detectionSpeed: DetectionSpeed.noDuplicates,
      formats: [BarcodeFormat.qrCode],
    );

    _animationCtrl.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animateScanAnimation(reverse: true);
      } else if (status == AnimationStatus.dismissed) {
        animateScanAnimation(reverse: false);
      }
    });
    _animationCtrl.forward(from: 0.0);

    super.initState();
  }

  @override
  void dispose() {
    _animationCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScanBloc, ScanState>(
      listenWhen: (previous, current) =>
          current.isConfirming != previous.isConfirming ||
          current.failureOrScanOption.isSome(),
      listener: (context, state) {
        if (!state.isLoading) {
          state.failureOrScanOption.fold(
            () {},
            (either) => either.fold(
              (f) {
                // close scan page
                context.router.pop();
                ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
                  context: context,
                  text: f.message!,
                  type: SnackBarType.error,
                ));
              },
              (scanObj) {
                // close the scan page
                context.router.pop();
                ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
                  context: context,
                  text: "Scan successfull!",
                ));
              },
            ),
          );
        }

        // if (state.selfie != null) {
        //   _scannerCtrl.stop();
        //   context
        //       .read<ScanBloc>()
        //       .add(const ScanEvent.scannerStatusChanged(status: false));
        // }

        // Show confirmation modal
        if (state.isConfirming) {
          // showbottomsheet
          showModalBottomSheet(
            context: context,
            // constraints: const BoxConstraints.expand(height: 240),
            builder: (_) {
              final event = state.eventOption.getOrElse((() => EventObject()));
              return BlocProvider.value(
                value: context.read<ScanBloc>(),
                child: const ScanConfirmationWidget(),
              );
            },
          ).whenComplete(() {
            if (state.scannerStatus == false) {
              try {
                _scannerCtrl.start();
                context
                    .read<ScanBloc>()
                    .add(const ScanEvent.scannerStatusChanged(status: true));
              } on MobileScannerException catch (e) {
                print(e.errorDetails!.message);
              } catch (e) {
                print(e);
              }
            }

            // Do something when modal is closed
            context.read<ScanBloc>().add(const ScanEvent.started());
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const AutoLeadingButton(),
            title: const Text("Scan QR Code"),
            actions: [
              if (_scannerCtrl.hasTorch)
                IconButton(
                  onPressed: () async {
                    await _scannerCtrl.toggleTorch();
                  },
                  icon: const Icon(LineAwesomeIcons.lightning_bolt),
                ),
            ],
          ),
          body: Stack(
            children: [
              // Scan camera view
              MobileScanner(
                controller: _scannerCtrl,
                onScannerStarted: (arguments) {
                  print("yyyyyyyyyeeeeeeeeeeessssssssssssssss!");
                  context
                      .read<ScanBloc>()
                      .add(const ScanEvent.scannerStatusChanged(status: true));
                },
                onDetect: (capture) {
                  if (capture.barcodes.isNotEmpty) {
                    // Example payload
                    // {
                    //   "eventId": "",
                    //   "type": "IN/OUT",
                    // }

                    String value = capture.barcodes[0].rawValue ?? "";
                    if (value.isNotEmpty) {
                      final map = jsonDecode(value) as Map<String, dynamic>;

                      context
                          .read<ScanBloc>()
                          .add(ScanEvent.scanDetected(qr: map));

                      // Workaround to avoid duplicate scans
                      _scannerCtrl.stop();
                      context.read<ScanBloc>().add(
                          const ScanEvent.scannerStatusChanged(status: false));
                    }
                  }
                },
              ),
              // Scanner animation
              ScannerAnimatedWidget(
                stopped: !(state.isScanning),
                width: ResponsiveWrapper.of(context).scaledWidth,
                animation: _animationCtrl,
              ),
              // Loading spinner
              if (state.isLoading) const LoaderWidget()
            ],
          ),
        );
      },
    );
  }

  void animateScanAnimation({required bool reverse}) {
    if (reverse) {
      _animationCtrl.reverse(from: 1.0);
    } else {
      _animationCtrl.forward(from: 0.0);
    }
  }
}
