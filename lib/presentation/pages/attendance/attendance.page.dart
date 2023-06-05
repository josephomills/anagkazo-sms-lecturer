import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lecturer/presentation/widgets/lists/scan_list.widget.dart';

@RoutePage()
class AttendancePage extends StatelessWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tabsRouter.current.meta["title"]),
      ),
      body: const ScanListWidget(),
    );
  }
}
