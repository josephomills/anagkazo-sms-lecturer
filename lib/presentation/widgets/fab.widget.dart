import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:lecturer/presentation/navigation/autoroute.gr.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text("Scan"),
      icon: const Icon(LineAwesomeIcons.qrcode),
      onPressed: () => context.router
          .push(ScanRoute(attendanceBloc: context.read<AttendanceBloc>())),
    );
  }
}
