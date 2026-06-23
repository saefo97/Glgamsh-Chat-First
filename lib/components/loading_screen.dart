
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.yellow.shade300,
              Colors.yellow.shade900
            ],
                begin: AlignmentGeometry.topLeft,
                end: AlignmentGeometry.bottomRight

            )
        ),

        child: SpinKitSpinningLines(color: Colors.white,

          size: 100,
          lineWidth: 4,
        ));
  }
}
