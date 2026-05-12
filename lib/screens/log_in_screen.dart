import 'package:chat_first/screens/chat_screen.dart';
import 'package:chat_first/screens/forget_password_screen.dart';
import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_button.dart';
import '../components/custom_text_form_field.dart';
import '../constants.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
                  "Log In",
                  style: TextStyle(fontSize: 30, color: kMainColor),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            CustomTextFormField(label: "Password",isPassword: true,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgetPasswordScreen()));
              }, child: Text("Forget Password?",
              style: TextStyle(
                color: kDarkColor2
              ),

              )),
            ),
            Hero(
                tag: "logIn",child: CustomButton(title: "Log In",
            onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
            },
            width: 200,

            )),

          ],
        ),
      ),
    );
  }
}
