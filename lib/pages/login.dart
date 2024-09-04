import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String id = 'home';
  
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Text("Welcome to Login!"),
    );
  }
}
