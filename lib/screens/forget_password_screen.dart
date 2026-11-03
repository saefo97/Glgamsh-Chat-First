import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constans.dart';

class ForgetPasswordScreen extends StatefulWidget {
 const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool isClicked = false;

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
                  "Forget Password",
                  style: TextStyle(color: kMainColor, fontSize: 34),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            AnimatedContainer(
              duration: Duration(
                milliseconds: 350
              ),
              width: isClicked ? 200 : 150,
              decoration: BoxDecoration(
                gradient: isClicked ? kDarkGreen : kDarkGradient,

                borderRadius: BorderRadius.circular(30),
              ),
              child: MaterialButton(
                height: 64,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: isClicked ? null    : () {
                  isClicked = !isClicked;
                  setState(() {

                  });
                  print(isClicked);
                },
                child: Row(
                  mainAxisAlignment: isClicked
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    Text(
                      isClicked ? "Sent!" : "Send",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                    isClicked
                        ? Icon(Icons.check, size: 28, color: Colors.white)
                        : Container(),
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



