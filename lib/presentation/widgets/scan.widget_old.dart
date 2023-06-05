import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lecturer/domain/attendance/lecture_type.enum.dart';
import 'package:lecturer/domain/attendance/scan_type.enum.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({
    Key? key,
    required this.classOf,
    required this.dateTime,
    required this.scanType,
    required this.lectureType,
  }) : super(key: key);

  final String classOf;
  final DateTime dateTime;
  final ScanType scanType;
  final LectureType lectureType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.5,
            spreadRadius: 0.5,
            offset: Offset(0.5, 0.5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                classOf,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(lectureType.value + " - " + scanType.value),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatDate(dateTime)),
              const Icon(Icons.qr_code),
            ],
          ),
        ],
      ),
    );
  }

  String formatDate(DateTime dateTime) {
    final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
    return dateFormat.format(dateTime);
  }

  bool isLate(LectureType type, DateTime dateTime) {
    bool isLate = false;

    switch (type) {
      case LectureType.pillar:
        isLate = (formatDate(dateTime).split(" ")[1].substring(0, 2) == "11") &&
            int.parse(formatDate(dateTime).split(" ")[1].substring(3, 5)) > 15;
        break;
      default:
    }

    return isLate;
  }
}
