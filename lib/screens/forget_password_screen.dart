import 'package:flutter/material.dart';
import '../components/background_decoration.dart';
import '../components/custom_text_form_field.dart';
import '../constants.dart';


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
                  tag: "logo",

                  child: Image.asset("assets/images/logo.png",
                    height: 90,

                  ),
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 30, color: kMainColor),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(label: "Email"),
            SizedBox(height: 8.0),
            AnimatedContainer(
              duration:Duration(
                milliseconds: 350
              ) ,
              width: isClicked ? 200 : 150,
              decoration: BoxDecoration(
                gradient:isClicked      ? kGreenGradient       :  kDarkGradient,
                borderRadius: BorderRadiusGeometry.circular(100),
              ),

              child: MaterialButton(
                onPressed:  isClicked ? null   : (){
                  isClicked = !isClicked;
                  setState(() {

                  });
                },
                //   color: Colors.transparent,
                //  elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(100),
                ),
                height: 65,
                child: Row(
                  mainAxisAlignment:   isClicked ?  MainAxisAlignment.spaceEvenly  : MainAxisAlignment.center,
                  children: [
                    Text(
                      isClicked ? "Sent!" :      "Send",
                      style: TextStyle(fontSize: 28.0, color: Colors.white),
                    ),
                    isClicked ?    Icon(Icons.check,
                      size: 28, color: Colors.white,
                    )  :  Container()
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
