import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  bool isPassword;
  CustomTextFormField({
    super.key,
    required this.label,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? isHidden : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                color: kDarkColor1,
                onPressed: () {
                  isHidden = !isHidden;
                  setState(() {});
                  print(isHidden);
                },
                icon: isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
        label: Text(widget.label, style: TextStyle(color: kMainColor)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: kLightColor2, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: kDarkColor1, width: 3),
        ),
      ),
    );
  }
}
