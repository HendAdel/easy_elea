import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Text("Welcome to firsebase!"),
    );
  }
}
