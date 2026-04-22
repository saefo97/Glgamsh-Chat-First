

import 'package:flutter/material.dart';

import 'constants.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class BackgroundDecoration extends StatelessWidget {
  final Widget child;
  const BackgroundDecoration({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
