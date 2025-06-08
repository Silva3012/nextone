import 'package:flutter/material.dart';
import 'package:nextone/app/router/app_router.dart';
import 'package:nextone/app/theme/nextone_app_theme.dart';

class NextOneApp extends StatelessWidget {
  NextOneApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NextOne',
      theme: NextoneAppTheme.theme,
      routerConfig: _appRouter.config(),
    );
  }
}
