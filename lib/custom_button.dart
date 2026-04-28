

import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double? width;
  const CustomButton({
    super.key, required this.title, this.onPressed, this.width = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        gradient: title == "Log In"? kLightGradient : kDarkGradient,
        borderRadius: BorderRadiusGeometry.circular(100),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        //   color: Colors.transparent,
        //  elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(100),
        ),
        height: 65,
        child: Text(
          title,
          style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
      ),
    );
  }
}
