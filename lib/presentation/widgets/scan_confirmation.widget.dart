import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lecturer/application/app/app_bloc.dart';
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart';
import 'package:lecturer/application/attendance/scan/scan_bloc.dart';
import 'package:lecturer/domain/app/app.failure.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/infrastructure/academics/models/year_group.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/presentation/widgets/avatar.widget.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:lecturer/presentation/widgets/snackbar.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
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
    return BlocConsumer<ScanBloc, ScanState>(
      buildWhen: (previous, current) => current.eventOption.isSome(),
      listenWhen: (previous, current) => current.failureOrScanOption.isSome(),
      listener: (context, state) {
        state.failureOrScanOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              // close confirmation modal
              context.router.pop();
              ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
                context: context,
                text: f.message!,
                type: SnackBarType.error,
              ));
            },
            (scanObj) {
              // close the scan page
              context.router.popUntilRoot();
              ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
                context: context,
                text: "Scan successfull!",
              ));
              // refresh attendance page
              context
                  .read<AttendanceBloc>()
                  .add(const AttendanceEvent.getAllScans());
            },
          ),
        );
      },
      builder: (context, state) {
        final event = state.eventOption.getOrElse(() => EventObject());

        return Container(
          height: state.qr!["type"] == "OUT" ? 300 : 500,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Column(
            children: [
              const Icon(LineAwesomeIcons.qrcode, size: 48),
              Text(
                "QR Code Detected",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: 8),
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
              // Class picker
              if (state.qr!["type"] == "IN") const SizedBox(height: 8),
              if (state.qr!["type"] == "IN")
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: DropdownButtonFormField<String>(
                    value: state.yearGroup,
                    alignment: Alignment.centerLeft,
                    items: buildYearGroupItems(
                      failureOrYearGroupListOption:
                          getIt<AppBloc>().state.failureOrYearGroupListOption,
                    ),
                    onChanged: (value) => context
                        .read<ScanBloc>()
                        .add(ScanEvent.yearGroupChanged(yearGroup: value)),
                    validator: (value) =>
                        value == "select" ? "Select a class" : "",
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                ),
              if (state.qr!["type"] == "IN") const SizedBox(height: 16),

              // Image holder
              if (state.qr!["type"] == "IN")
                Stack(
                  children: [
                    Center(
                      child: AvatarWidget(
                        url: state.selfie != null
                            ? state.selfie!.path
                            : "assets/avatar_generic.jpg",
                        size: 120,
                        onTap: () async => takeSelfie(context),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: MediaQuery.of(context).size.width / 2 - 40,
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
              const SizedBox(height: 16),
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
                            context
                                .read<ScanBloc>()
                                .add(const ScanEvent.scanCancelled());
                            context.router.pop();
                          },
                  ),
                  const SizedBox(width: 16),
                  ButtonWidget(
                    isLoading: state.isLoading,
                    label: "Confirm",
                    widthFactor: 0.35,
                    onTap: state.qr!["type"] == "OUT" ||
                            (state.selfie != null &&
                                state.yearGroup != "select")
                        ? () {
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

  List<DropdownMenuItem<String>> buildYearGroupItems(
      {required Option<Either<AppFailure, List<YearGroupObject>>>
          failureOrYearGroupListOption}) {
    var defaultElement = const DropdownMenuItem(
        value: "select", child: Text("Select a class..."));
    return failureOrYearGroupListOption.fold(
      () => [defaultElement],
      (either) {
        return either.fold(
          (l) => [defaultElement],
          (yearGroupList) {
            var list = yearGroupList
                .map((yearGroup) => DropdownMenuItem<String>(
                      value: yearGroup.objectId,
                      child: Text(yearGroup.name!),
                    ))
                .toList();
            list.insert(0, defaultElement);

            return list;
          },
        );
      },
    );
  }
}
