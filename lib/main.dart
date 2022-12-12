import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/navigation/app_router.dart';
import 'package:flutter_twitter_clone_app/size_config.dart';
import 'package:flutter_twitter_clone_app/ui/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_twitter_clone_app/state/state.dart';
import 'package:logging/logging.dart';
import 'dart:developer';

void main() {
  _setupLogging();
  WidgetsFlutterBinding.ensureInitialized();
  AppStateManager.initAppStateObject();
  runApp(const MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    log('${event.level.name} : ${event.time} : ${event.message}');
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppStateManager appStateManager = AppStateManager.instance;
  late final _appRouter = AppRouter(appStateManager);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData theme = AppTheme.apptheme.copyWith(
      textTheme: GoogleFonts.mulishTextTheme(
        Theme.of(context).textTheme,
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => appStateManager),
      ],
      child: MaterialApp.router(
        theme: theme,
        title: 'flutter_twitter_clone',
        routerDelegate: _appRouter.router.routerDelegate,
        routeInformationParser: _appRouter.router.routeInformationParser,
        routeInformationProvider: _appRouter.router.routeInformationProvider,
      ),
    );
  }
}
