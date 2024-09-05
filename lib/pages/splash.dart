import 'package:easy_elea/pages/home.dart';
import 'package:easy_elea/pages/on_board.dart';
import 'package:easy_elea/services/pref.service.dart';
import 'package:easy_elea/utils/color.utility.dart';
import 'package:easy_elea/utils/images.utility.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String id = 'splash';

  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagesUtility.logo),
            const CircularProgressIndicator(
              color: ColorUtility.main,
            ),
          ],
        ),
      ),
    );
  }

  void _startApp() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      if (PreferencesService.isOnBoardingSeen) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardPage.id);
      }
    }
  }
}
