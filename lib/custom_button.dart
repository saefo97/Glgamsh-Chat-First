

import 'package:flutter/material.dart';

import 'constants.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        gradient: title == "Log In"? kLightGradient : kDarkGradient,
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
          title,
          style: TextStyle(fontSize: 28.0, color: Colors.white),
        ),
      ),
    );
  }
}
