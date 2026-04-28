import 'package:chat_first/sign_up_screen.dart';
import 'package:chat_first/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'log_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WelcomeScreen());
  }
}
