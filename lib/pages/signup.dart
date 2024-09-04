import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  static const String id = 'home';
  
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Text("Welcome to firsebase!"),
    );
  }
}
