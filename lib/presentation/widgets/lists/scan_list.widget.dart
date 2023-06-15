import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/domain/attendance/attendance.failure.dart';
import 'package:lecturer/presentation/widgets/snackbar.widget.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:skeletons/skeletons.dart';
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/domain/core/enums/types.enum.dart';
import 'package:lecturer/domain/core/extensions/string.ext.dart';
import 'package:lecturer/infrastructure/attendance/models/event.object.dart';
import 'package:lecturer/infrastructure/attendance/models/event_type.object.dart';
import 'package:lecturer/infrastructure/attendance/models/scan.object.dart';
import 'package:lecturer/presentation/widgets/cards/scan.widget.dart';
import 'package:lecturer/presentation/widgets/cards/skeleton_scan.widget.dart';
import 'package:lecturer/presentation/widgets/lists/empty_state.widget.dart';

/// A live list of scans.
///
/// Uses the [ParseLiveListWidget] from Back4App/Parse Server
class ScanListWidget extends StatelessWidget {
  const ScanListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttendanceBloc, AttendanceState>(
      listener: (context, state) {
        if (state.failureOrScans.isLeft()) {
          ScaffoldMessenger.of(context).showSnackBar(snackBarWidget(
            text: state.failureOrScans
                .swap()
                .getOrElse(() => const AttendanceFailure.serverError(
                      message: "Server error",
                    ))
                .map(serverError: (e) => e.message!),
            context: context,
            type: SnackBarType.error,
          ));
        }
      },
      builder: (context, state) {
        final scans = state.failureOrScans.getOrElse(() => []);

        return state.isLoading
            ? loadingWidget
            : scans.isEmpty
                ? emptyWidget
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    itemCount: scans.length,
                    itemBuilder: (context, index) =>
                        ScanWidget(scan: scans[index]),
                  );
      },
    );
  }

  Widget get loadingWidget => SkeletonListView(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemCount: 15,
        itemBuilder: (context, index) => const SkeletonScanWidget(),
      );

  Widget get emptyWidget => const EmptyStateWidget(
        asset: "assets/illustrations/taking_selfie.png",
        text: "You have not scanned yet. Let'start now.",
      );

  Widget get parseLiveList => ParseLiveListWidget<ScanObject>(
        query: QueryBuilder<ScanObject>(ScanObject())
          ..whereEqualTo(ScanObject.kUser, getIt<ParseUser>().toPointer())
          ..whereMatchesQuery(
            ScanObject.kEvent,
            QueryBuilder<EventObject>(EventObject())
              ..whereMatchesQuery(
                EventObject.kEventType,
                QueryBuilder<EventTypeObject>(EventTypeObject())
                  ..whereEqualTo(
                    EventTypeObject.kCategory,
                    EventCategory.lecturer.name.capitalize,
                  ),
              ),
          )
          ..includeObject([
            ScanObject.kEvent,
            "${ScanObject.kEvent}.${EventObject.kEventType}",
            ScanObject.kSelfie,
          ])
          ..orderByDescending(ScanObject.kScannedInAt)
          ..setLimit(50),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        scrollPhysics: const BouncingScrollPhysics(),
        lazyLoading: false,
        // listenOnAllSubItems: true,
        listeningIncludes: const [
          ScanObject.kEvent,
          "${ScanObject.kEvent}.${EventObject.kEventType}",
          ScanObject.kSelfie,
        ],
        listLoadingElement: loadingWidget,
        queryEmptyElement: emptyWidget,
        childBuilder: (context, snapshot) {
          if (snapshot.failed) {
            return Center(
              child: Image.asset("assets/illustrations/signal_searching.png"),
            );
          } else if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: ScanWidget(scan: snapshot.loadedData!),
            );
          } else {
            return const SkeletonScanWidget();
          }
        },
        removedItemBuilder: (context, snapshot) {
          return Container();
        },
      );
}
