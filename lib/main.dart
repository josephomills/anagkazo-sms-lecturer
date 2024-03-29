import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:lecturer/application/app/app_bloc.dart';
import 'package:lecturer/domain/core/config/injectable.core.dart';
import 'package:lecturer/infrastructure/services/parse.service.dart';
import 'package:lecturer/presentation/navigation/autoroute.dart';
import 'package:lecturer/presentation/theme/app_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Allow the splash screen to stay a little longer until current user has been obtained
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Load environment variables
  await dotenv.load();
  // Initialize Parse Server (Back4App)
  await initParse();
  // Initialise dependency injection
  initInjectable(Environment.prod);

  runApp(AnagkazoSMSLecturer());
}

class AnagkazoSMSLecturer extends StatelessWidget {
  AnagkazoSMSLecturer({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: getIt<AppBloc>(),
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'ABMTC Lecturer',
          themeMode: state.themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            defaultScale: true,
          ),
          locale: const Locale('en'),
        );
      },
    );
  }
}
