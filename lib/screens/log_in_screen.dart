import 'package:flutter/material.dart';

import '../authentication/auth_services.dart';
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

  AuthServices _authServices = AuthServices();

  bool isLoading = false;

  signIn() async {
    if (_key.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      String? response = await _authServices.signIn(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
      setState(() {
        isLoading = false;
      });
      if (response == null) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
          (route) => false,
        );
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response)));
      }
    }
  }

  final _key = GlobalKey<FormState>();

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

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? LoadingScreen()
        : Scaffold(
            body: Form(
              key: _key,
              child: BackgroundDecoration(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء إدخال إيميل';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'الرجاء إدخال إيميل صحيح';
                        }
                        return null;
                      },
                      controller: emailController,
                    ),
                    SizedBox(height: 8.0),
                    CustomTextFormField(
                      label: "Password",
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'الرجاء إدخال كلمة مرور';
                        }
                        if (value.length < 6) {
                          return 'الرجاء إدخال كلمة مرور طويلة';
                        }
                        return null;
                      },
                      controller: passwordController,
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
                          signIn();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
