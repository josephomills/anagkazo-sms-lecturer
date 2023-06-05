import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lecturer/application/app/app_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/presentation/navigation/autoroute.gr.dart';
import 'package:lecturer/presentation/widgets/bottom_nav.widget.dart';
import 'package:lecturer/presentation/widgets/fab.widget.dart';

@RoutePage()
class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        // initial calls
        getIt<AppBloc>().add(const AppEvent.started());

        // Build page
        return AutoTabsScaffold(
          homeIndex: NavIndex.attendance,
          routes: [const AttendanceRoute(), ProfileRoute()],
          bottomNavigationBuilder: (context, tabsRouter) {
            return const BottomNavWidget();
          },
          floatingActionButtonBuilder: (context, tabsRouter) {
            return tabsRouter.activeIndex == NavIndex.attendance
                ? const FABWidget()
                : null;
          },
        );
      },
    );
  }
}

/// Nav index for pages
class NavIndex {
  static const int attendance = 0;
  static const int profile = 1;
}

/// Indices for attendance tabs
class TabIndex {
  static const int lecture = 0;
  static const int church = 1;
  static const int otherEvents = 4;
}
