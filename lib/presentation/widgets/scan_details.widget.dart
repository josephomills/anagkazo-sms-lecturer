import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';
import 'package:lecturer/presentation/widgets/avatar.widget.dart';
import 'package:lecturer/presentation/widgets/button.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';

class ScanDetailsWidget extends StatelessWidget {
  const ScanDetailsWidget({super.key, required this.scan});

  final ScanObject scan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
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
            "Scan Details",
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
                  text: scan.event!.name!,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Class: ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(
                  text: scan.yearGroup?.name ?? "",
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
                  text: "Scanned at: ",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(
                  text: Moment(scan.scannedInAt!)
                      .formatDateTimeWithWeekdayShort(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),
          // Image holder
          Center(
            child: AvatarWidget(
              url: scan.selfie != null
                  ? scan.selfie!.url!
                  : "assets/avatar_generic.jpg",
              size: 160,
            ),
          ),
          const SizedBox(height: 16),
          ButtonWidget(
            isLoading: false,
            label: "OK",
            widthFactor: 0.7,
            onTap: () => context.router.pop(),
          ),
        ],
      ),
    );
  }
}
