import 'package:flutter/material.dart';
import 'package:lecturer/domain/core/extensions/moment.ext.dart';
import 'package:lecturer/presentation/widgets/scan_details.widget.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.scan,
  }) : super(key: key);

  final ScanObject scan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        tileColor: Theme.of(context).colorScheme.background,
        title: Text(
          Moment(scan.scannedInAt!).formatDateWithWeekdayShort(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        subtitle: Text(
          scan.event!.name!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        leading: const Icon(LineAwesomeIcons.qrcode, size: 48),
        trailing: SizedBox(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Text("IN"),
                  const Spacer(),
                  const Text(" - "),
                  const Spacer(),
                  Text(
                    Moment(scan.scannedInAt!).formatTimeWithSeconds(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  const Spacer(),
                  Icon(
                    hasScannedIn(scan: scan)
                        ? LineAwesomeIcons.check
                        : LineAwesomeIcons.times,
                    color: hasScannedIn(scan: scan)
                        ? Colors.green.shade700
                        : Theme.of(context).colorScheme.error,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text("OUT"),
                  const Spacer(),
                  const Text(" - "),
                  const Spacer(),
                  if (scan.scannedOutAt != null)
                    Text(
                      Moment(scan.scannedOutAt!).formatTimeWithSeconds(),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  if (scan.scannedOutAt != null) const Spacer(),
                  Icon(
                    hasScannedOut(scan: scan)
                        ? LineAwesomeIcons.check
                        : LineAwesomeIcons.times,
                    color: hasScannedOut(scan: scan)
                        ? Colors.green.shade700
                        : Theme.of(context).colorScheme.error,
                  )
                ],
              ),
            ],
          ),
        ),
        onTap: () => showModalBottomSheet(
            context: context,
            builder: (context) {
              return ScanDetailsWidget(scan: scan);
            }),
      ),
    );
  }

  bool isLateScan({required ScanObject scan}) {
    return Moment(scan.scannedInAt!).isAfter(Moment(scan.event!.startsAt!)
        .add(Duration(minutes: scan.event!.latenessRule!)));
  }

  bool hasScannedOut({required ScanObject scan}) {
    return scan.scannedOutAt != null;
  }

  bool hasScannedIn({required ScanObject scan}) {
    return scan.scannedInAt != null;
  }

  bool isTooLateToScanIn({required EventObject event}) {
    return Moment.now().toUtc().isAfter(
        Moment(event.startsAt!).add(Duration(minutes: event.latenessRule!)));
  }
}
