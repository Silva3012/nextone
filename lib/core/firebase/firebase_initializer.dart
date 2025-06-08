import 'package:firebase_core/firebase_core.dart';
import 'package:nextone/core/firebase/firebase_options.dart';

class FirebaseInitializer {
  static Future<FirebaseApp> initialize() async {
    // Ensure that Firebase is initialized before using it
    return await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
