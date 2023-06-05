import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  final dateFormat = DateFormat("dd-MM-yyyy HH:mm:ss");
  return dateFormat.format(dateTime);
}

/// Method to unfocus when tapped
unfocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
