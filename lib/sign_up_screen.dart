

import 'package:flutter/material.dart';

import 'background_decoration.dart';
import 'constants.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Hero(
                  tag: "logo",

                  child: Image.asset("assets/images/logo.png",
                    height: 90,

                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 30, color: kMainColor),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Password"),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Confirm Password"),
            SizedBox(height: 8.0),
            Hero(
                tag: "signUp",child: CustomButton(title: "Sign Up",

              width: 200,

            )),

          ],
        ),
      ),
    );
  }
}
