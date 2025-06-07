import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_app_theme.dart';

class NextOneApp extends StatelessWidget {
  const NextOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextOne',
      theme: NextoneAppTheme.theme,
      home: const Placeholder(),
    );
  }
}
