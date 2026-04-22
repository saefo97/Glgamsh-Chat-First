import 'package:flutter/material.dart';
import 'constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  const CustomTextFormField({
    super.key, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(color: kMainColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: kLightColor2,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: kDarkColor1,
            width: 3,
          ),
        ),
      ),
    );
  }
}
