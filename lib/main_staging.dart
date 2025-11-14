import 'package:clean_up_community_app/app.dart';
import 'package:flutter/material.dart';
import 'core/config/index.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AppEnvironment.init(Environment.staging);

  runApp(CleanUpApp(environment: AppEnvironment.name));
}
