import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_links/firebase_options.dart';
import 'package:flutter_dynamic_links/logic/config/apps/app.dart';
import 'package:flutter_dynamic_links/logic/config/apps/init_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
  await InitModule.init();
}
