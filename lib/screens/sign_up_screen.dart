import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constans.dart';
import '../components/custom_button.dart';

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
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Password", isPassword: true),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Confirm Password", isPassword: true),
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
                onPressed: () {},
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
