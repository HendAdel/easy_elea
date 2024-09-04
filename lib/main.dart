import 'package:easy_elea/firebase_options.dart';
import 'package:easy_elea/pages/home.dart';
import 'package:easy_elea/pages/on_board.dart';
import 'package:easy_elea/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/utils/color.utility.dart';

Future<void> main() async {
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Elea',
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorUtility.main),
        scaffoldBackgroundColor: ColorUtility.scaffoldBackground,
        useMaterial3: true,
      ),
      home: const OnBoardPage(),
    );
  }
}
