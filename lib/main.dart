import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nextone/app/app_providers.dart';
import 'package:nextone/core/config/app_bloc_observer.dart';
import 'package:nextone/core/supabase/supabase_initializer.dart';
import 'package:nextone/nextone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app/app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await SupabaseInitializer.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer = AppBlocObserver();

  runApp(
    AppProviders(
      child: NextOneApp(),
    ),
  );

  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
