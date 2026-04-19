import 'package:clean_up/app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/config/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env.staging");

  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }

  AppEnvironment.init(Environment.staging);

  runApp(CleanUpApp(environment: AppEnvironment.name));
}
