import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nextone/core/firebase/firebase_initializer.dart';
import 'app/app.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitializer.initialize();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(NextOneApp());

  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
}
