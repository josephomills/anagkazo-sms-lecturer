// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:lecturer/application/app/app_bloc.dart' as _i16;
import 'package:lecturer/application/attendance/attendance/attendance_bloc.dart'
    as _i17;
import 'package:lecturer/application/attendance/scan/scan_bloc.dart' as _i19;
import 'package:lecturer/application/auth/auth/auth_bloc.dart' as _i18;
import 'package:lecturer/application/auth/forgot_password/forgot_password_bloc.dart'
    as _i9;
import 'package:lecturer/application/auth/login/login_bloc.dart' as _i11;
import 'package:lecturer/application/profile/profile_bloc.dart' as _i12;
import 'package:lecturer/domain/app/app.facade.dart' as _i3;
import 'package:lecturer/domain/attendance/attendance.facade.dart' as _i5;
import 'package:lecturer/domain/attendance/scan/scan.facade.dart' as _i13;
import 'package:lecturer/domain/auth/auth.facade.dart' as _i7;
import 'package:lecturer/domain/core/config/injectable_modules.dart' as _i20;
import 'package:lecturer/domain/core/util/validator.dart' as _i15;
import 'package:lecturer/infrastructure/app/app.repo.dart' as _i4;
import 'package:lecturer/infrastructure/attendance/attendance.repo.dart' as _i6;
import 'package:lecturer/infrastructure/attendance/scan.repo.dart' as _i14;
import 'package:lecturer/infrastructure/auth/auth.repo.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final formModule = _$FormModule();
    gh.factory<_i3.AppFacade>(() => _i4.AppRepo());
    gh.factory<_i5.AttendanceFacade>(() => _i6.AttendanceRepo());
    gh.factory<_i7.AuthFacade>(() => _i8.AuthRepo());
    gh.factory<_i9.ForgotPasswordBloc>(
        () => _i9.ForgotPasswordBloc(gh<_i7.AuthFacade>()));
    gh.factory<_i10.GlobalKey<_i10.FormState>>(() => formModule.formKey);
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i7.AuthFacade>()));
    gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc());
    gh.factory<_i13.ScanFacade>(() => _i14.ScanRepo());
    gh.factory<_i15.Validator>(() => _i15.Validator());
    gh.singleton<_i16.AppBloc>(_i16.AppBloc(gh<_i3.AppFacade>()));
    gh.factory<_i17.AttendanceBloc>(
        () => _i17.AttendanceBloc(gh<_i5.AttendanceFacade>()));
    gh.singleton<_i18.AuthBloc>(_i18.AuthBloc(gh<_i7.AuthFacade>()));
    gh.factory<_i19.ScanBloc>(() => _i19.ScanBloc(gh<_i13.ScanFacade>()));
    return this;
  }
}

class _$FormModule extends _i20.FormModule {}
