import 'package:chat_first/authentication/auth_services.dart';
import 'package:chat_first/components/loading_screen.dart';
import 'package:chat_first/screens/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constans.dart';
import '../components/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmedPasswordController = TextEditingController();

  AuthServices _authServices = AuthServices();

  bool isLoading = false;

  signUp() async {
    if (_key.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      String? response = await _authServices.signUp(
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading ? LoadingScreen() : Form(
        key: _key,

        child: BackgroundDecoration(
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
              SizedBox(height: 8.0),
              CustomTextFormField(
                label: "Confirm Password",
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء إدخال كلمة مرور';
                  }
                  if (value != passwordController.text) {
                    return 'كلمة المرور لا تتطابق';
                  }
                  return null;
                },
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
                    signUp();
                  },
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
