import 'package:flutter/material.dart';
import '../constans.dart';

class CustomTextFormField extends StatefulWidget {
 final String label;
 final bool isPassword;
  const CustomTextFormField({
    super.key, required this.label,  this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:widget. isPassword ? isHidden : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword ? IconButton(onPressed: (){
          setState(() {
            isHidden = !isHidden;
          });
        },
        color: kDarkColor1,
          icon: Icon( isHidden?  Icons.visibility_off : Icons.visibility),

        ) : null,
          label: Text(widget.label,style: TextStyle(color:  kDarkColor2,),),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kLightColor2,
                width: 2),
            borderRadius: BorderRadius.circular(6),
          ),focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kDarkColor2,
            width: 3),
        borderRadius: BorderRadius.circular(12),

      )
      ),
    );
  }
}
