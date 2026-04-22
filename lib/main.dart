import 'package:flutter/material.dart';
import 'background_decoration.dart';
import 'constants.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LogInScreen());
  }
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Log In",
              style: TextStyle(fontSize: 30, color: kMainColor),
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Password"),
            SizedBox(height: 8.0),

            CustomButton(title: "Log In",),

          ],
        ),
      ),
    );
  }
}
