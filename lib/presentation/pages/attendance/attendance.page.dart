import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/presentation/widgets/fab.widget.dart';
import 'package:lecturer/presentation/widgets/lists/scan_list.widget.dart';

@RoutePage()
class AttendancePage extends StatelessWidget implements AutoRouteWrapper {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tabsRouter.current.meta["title"]),
      ),
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<AttendanceBloc>()
            .add(const AttendanceEvent.getAllScans()),
        child: BlocProvider.value(
          value: context.read<AttendanceBloc>(),
          child: const ScanListWidget(),
        ),
      ),
      floatingActionButton: BlocProvider.value(
        value: context.read<AttendanceBloc>(),
        child: const FABWidget(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AttendanceBloc>()..add(const AttendanceEvent.getAllScans()),
      child: this,
    );
  }
}
