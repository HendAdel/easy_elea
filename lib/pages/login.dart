import 'package:flutter/material.dart';
import 'package:easy_elea/utils/app_titles_text.dart';

class Login extends StatefulWidget {
  static const String id = 'login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 50,
            ),
            Text(
              'Login',
              style: AppTitles.titlesStyle,
            )
          ],
        ),
      ),
    );
  }
}
