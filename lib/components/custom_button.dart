import 'package:flutter/material.dart';
import '../constans.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  double? width;
   CustomButton({super.key, required this.title, this.onPressed, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        gradient: title == "Log In" ? kLightGradient : kDarkGradient,

        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        height: 64,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.white,
              fontFamily: "times",

              fontSize: 28.0),
        ),
      ),
    );
  }
}
