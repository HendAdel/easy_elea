import 'package:easy_elea/firebase_options.dart';
import 'package:easy_elea/pages/home.dart';
import 'package:easy_elea/pages/login.dart';
import 'package:easy_elea/pages/on_board.dart';
import 'package:easy_elea/pages/signup.dart';
import 'package:easy_elea/pages/splash.dart';
import 'package:easy_elea/services/pref.service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:easy_elea/utils/color.utility.dart';
import 'package:easy_elea/services/custom_scroll_behaviour.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesService.initialize();

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
      scrollBehavior: CustomScrollBehaviour(),
      debugShowCheckedModeBanner: false,
      title: 'Easy Elea',
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorUtility.main),
        scaffoldBackgroundColor: ColorUtility.scaffoldBackground,
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        final String routName = settings.name ?? '';
        final Map? data = settings.arguments as Map?;

        switch (routName) {
          case OnBoardPage.id:
            return MaterialPageRoute(builder: (context) => const OnBoardPage());
          case Signup.id:
            return MaterialPageRoute(builder: (context) => const Signup());
          case Login.id:
            return MaterialPageRoute(builder: (context) => const Login());
          case HomePage.id:
            return MaterialPageRoute(builder: (context) => const HomePage());
          default:
            return MaterialPageRoute(builder: (context) => const Splash());
        }
      },
      initialRoute: Login.id,
    );
  }
}
