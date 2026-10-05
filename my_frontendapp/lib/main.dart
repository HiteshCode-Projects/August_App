import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_frontendapp/auth_screen.dart';
import 'firebase_options.dart';
import 'auth_screen.dart';

void main() async {
  //Async- Doing Multiple Task at The same Time

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthScreen(),
    );
  }
}
