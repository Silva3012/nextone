import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nextone/app/app_providers.dart';
import 'package:nextone/core/config/app_bloc_observer.dart';
import 'package:nextone/core/supabase/supabase_initializer.dart';
import 'package:nextone_core/nextone_core_export.dart';
import 'app/app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await SupabaseInitializer.initialize();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = AppBlocObserver();
  await configureDependencies();

  runApp(
    AppProviders(
      child: NextOneApp(),
    ),
  );

  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
