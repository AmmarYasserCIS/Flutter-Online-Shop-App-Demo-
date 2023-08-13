import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/BottomNav/Layout.dart';
import 'package:projects/BottomNav/Tasks.dart';
import 'package:projects/BottomNav/Done.dart';
import 'package:projects/Signup.dart';
import 'package:projects/about.dart';
import 'package:projects/myapp.dart';
import 'package:projects/third.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The First App',
        theme: ThemeData(
          colorSchemeSeed: Colors.blueGrey,
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Colors.blue)
        ),
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen());
  }
}
