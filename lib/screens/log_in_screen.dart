import 'package:chat_first/components/loading_screen.dart';
import 'package:chat_first/screens/chat_screen.dart';
import 'package:chat_first/screens/forget_password_screen.dart';
import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_button.dart';
import '../components/custom_text_form_field.dart';
import '../constants.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  void initState() {
    print("********************************************");
    print("initState Triggered");
    print("********************************************");
    super.initState();
  }

  @override
  void dispose() {
    print("********************************************");
    print("dispose Triggered");
    print("********************************************");
    super.dispose();
  }

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return isLoading ? LoadingScreen() : Scaffold(
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
              setState(() {
                isLoading = true;
              });
              Future.delayed(Duration(seconds: 5),() {
                setState(() {
                  isLoading = false;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));

              },);

            },
            width: 200,

            )),

          ],
        ),
      ),
    );
  }
}
