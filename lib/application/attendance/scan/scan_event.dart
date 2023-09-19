part of 'scan_bloc.dart';

@freezed
class ScanEvent with _$ScanEvent {
  const factory ScanEvent.started() = _Started;
  const factory ScanEvent.scanDetected({required Map<String, dynamic> qr}) =
      _ScanDetected;
  const factory ScanEvent.scanConfirmed() = _ScanConfirmed;
  const factory ScanEvent.scanCancelled() = _ScanCancelled;
  const factory ScanEvent.selfieTaken({XFile? selfie}) = _SelfieTaken;
  const factory ScanEvent.scannerStatusChanged({required bool status}) =
      _ScannerStarted;
  const factory ScanEvent.yearGroupChanged({required String? yearGroup}) =
      _YearGroupChanged;
}
