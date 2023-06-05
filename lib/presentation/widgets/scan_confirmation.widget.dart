import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lecturer/presentation/widgets/avatar.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:lecturer/application/attendance/scan/scan_bloc.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ScanConfirmationWidget extends StatelessWidget {
  const ScanConfirmationWidget({super.key});

  void takeSelfie(BuildContext context) async {
    final selfie = (await ImagePicker().pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
    ));
    context.read<ScanBloc>().add(ScanEvent.selfieTaken(selfie: selfie));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanBloc, ScanState>(
      buildWhen: (previous, current) =>
          current.selfie?.path != previous.selfie?.path &&
          current.eventOption.isSome(),
      builder: (context, state) {
        final event = state.eventOption.getOrElse(() => EventObject());

        return Container(
          height: 620,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(LineAwesomeIcons.qrcode, size: 80),
              Text(
                "QR Code Detected",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 24),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Event: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: event.name!,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Scan: ",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: state.qr!["type"],
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              // Image holder
              Stack(
                children: [
                  Center(
                    child: AvatarWidget(
                      url: state.selfie != null
                          ? state.selfie!.path
                          : "assets/avatar_generic.jpg",
                      size: 160,
                      onTap: () async => takeSelfie(context),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    right: ResponsiveWrapper.of(context).scaledWidth / 2 - 40,
                    child: IconButton(
                      onPressed: () async => takeSelfie(context),
                      icon: Icon(
                        LineAwesomeIcons.camera,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    isLoading: false,
                    label: "Cancel",
                    widthFactor: 0.35,
                    onTap: state.isLoading
                        ? null
                        : () {
                            context.router.pop();
                            context
                                .read<ScanBloc>()
                                .add(const ScanEvent.scanCancelled());
                          },
                  ),
                  const SizedBox(width: 16),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Confirm",
                    widthFactor: 0.35,
                    onTap: state.selfie != null
                        ? () {
                            // Close bottom sheet
                            context.router.pop();
                            context
                                .read<ScanBloc>()
                                .add(const ScanEvent.scanConfirmed());
                          }
                        : null,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
