import 'package:chat_first/authentication/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constans.dart';
import '../components/custom_button.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();

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
                  tag: 'logo',
                  child: Image.asset("assets/images/logo.png", height: 75),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: kMainColor, fontSize: 34),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email",
            controller: emailController,
            ),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Password", isPassword: true,
            controller: passwordController,
            ),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Confirm Password", isPassword: true,
            controller: confirmedPasswordController,
            ),
            SizedBox(height: 8.0),
            //       GestureDetector(
            //
            //         onTap: (){
            //           print("Hello");
            // },
            //         child: Container(
            //           padding: EdgeInsets.all(8),
            //           child: Text("Sign Up"),
            //         ),
            //       ),
            Hero(
              tag: 'signUp',
              child: CustomButton(
                title: "Sign Up",
                onPressed: () {
                  AuthServices().signUp(emailController.text.trim(), passwordController.text.trim());
                },
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
