import 'package:flutter/material.dart';
import '../constans.dart';

class BackgroundDecoration extends StatelessWidget {
  final Widget child;
  const BackgroundDecoration({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.55,
              width: MediaQuery.of(context).size.width * 0.55,
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
            height: MediaQuery.of(context).size.width * 0.75,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
              gradient:kLightGradient,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(360),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 100,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 3,
                    blurRadius: 4,
                  ),
                ],
                gradient: kDarkGradient,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 60,
            bottom: 240,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    spreadRadius: 3,
                    blurRadius: 4,
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
