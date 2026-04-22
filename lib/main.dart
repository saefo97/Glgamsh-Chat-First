import 'package:chat_first/constants.dart';
import 'package:flutter/material.dart';

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
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.width * 0.55,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: kDarkGradient,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(360),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
                gradient: kLightGradient,

                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(360),
                ),
              ),
            ),
            Positioned(
              left: 50,
              bottom: 120,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: kDarkGradient,
                ),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 240,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                  gradient: kLightGradient,

                  shape: BoxShape.circle,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
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

                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: kLightGradient,
                        borderRadius: BorderRadiusGeometry.circular(100),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        //   color: Colors.transparent,
                        //  elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(100),
                        ),
                        height: 65,
                        child: Text(
                          "Log In",
                          style: TextStyle(fontSize: 28.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
