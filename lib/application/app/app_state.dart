part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeMode themeMode,
    required Option<Either<AppFailure, List<RotationObject>>>
        failureOrRotationsOption,
    required Option<Either<AppFailure, List<YearGroupObject>>>
        failureOrYearGroupListOption,
    required bool isLoading,
  }) = _AppState;

  factory AppState.initial() => AppState(
        themeMode: ThemeMode.system,
        failureOrRotationsOption: none(),
        failureOrYearGroupListOption: none(),
        isLoading: false,
      );
}
