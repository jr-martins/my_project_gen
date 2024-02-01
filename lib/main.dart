import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_project_gen/firebase_core.dart';
import 'package:my_project_gen/firebase_crashlytics.dart';
import 'package:my_project_gen/firebase_options.dart';
import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
 await FirebaseCoreApp.init(DefaultFirebaseOptions.currentPlatform);

  FirebaseCoreCrashlytics firebaseCoreCrashlytics = FirebaseCoreCrashlytics();

  await firebaseCoreCrashlytics.config();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,

    //
  ]);

  runApp(const MyApp());
}
