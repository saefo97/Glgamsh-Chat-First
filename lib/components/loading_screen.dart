
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constans.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kLightColor1,kDarkColor2],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          )
      ),
      child: SpinKitSpinningLines(color: Colors.white,
        size: 100,
        //   duration: Duration(seconds: 1),
        lineWidth: 4,

      ),
    );
  }
}