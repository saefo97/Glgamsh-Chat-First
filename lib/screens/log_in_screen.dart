import 'package:flutter/material.dart';

import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../components/loading_screen.dart';
import '../constans.dart';
import '../components/custom_button.dart';
import 'chat_screen.dart';
import 'forget_password_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    print("********************************************************");
    print("init State Triggered");
    print("********************************************************");
    super.initState();
  }

  @override
  void dispose() {
    print("********************************************************");
    print("dispose Triggered");
    print("********************************************************");
    super.dispose();
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? LoadingScreen()
        : Scaffold(
            body: BackgroundDecoration(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Hero(
                        tag: 'logo',
                        child: Image.asset(
                          "assets/images/logo.png",
                          height: 75,
                        ),
                      ),
                      Text(
                        "Log In",
                        style: TextStyle(color: kMainColor, fontSize: 34),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  CustomTextFormField(
                    label: "Email",
                    controller: emailController,
                  ),
                  SizedBox(height: 8.0),
                  CustomTextFormField(
                    label: "Password",
                    controller: passwordController,
                    isPassword: true,
                  ),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetPasswordScreen(
                              email: emailController.text.trim(),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        "Forget Password?",

                        style: TextStyle(color: kDarkColor2),
                      ),
                    ),
                  ),
                  //       GestureDetector(
                  //
                  //         onTap: (){
                  //           print("Hello");
                  // },
                  //         child: Container(
                  //           padding: EdgeInsets.all(8),
                  //           child: Text("Log In"),
                  //         ),
                  //       ),
                  Hero(
                    tag: 'logIn',
                    child: CustomButton(
                      title: "Log In",

                      width: 200,
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        Future.delayed(Duration(seconds: 5), () {
                          setState(() {
                            isLoading = false;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(),
                            ),
                          );
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
