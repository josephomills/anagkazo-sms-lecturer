part of 'scan_bloc.dart';

@freezed
class ScanState with _$ScanState {
  const factory ScanState({
    required bool isScanning,
    required bool isLoading,
    required bool hasTakenSelfie,
    required bool isConfirming,
    required bool scannerStatus,
    DateTime? scannedAt,
    Map<String, dynamic>? qr,
    XFile? selfie,
    required Option<EventObject> eventOption,
    required Option<Either<ScanFailure, ScanObject>> failureOrScanOption,
  }) = _ScanState;

  factory ScanState.initial() => ScanState(
        isScanning: true,
        isLoading: false,
        isConfirming: false,
        eventOption: none(),
        failureOrScanOption: none(),
        hasTakenSelfie: false,
        scannerStatus: false,
      );
}
