import 'package:flutter/material.dart';
import 'package:ro1/const.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [Kprimary, Ksecondary],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: Text(
        'LOGO',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w700,
          fontFamily: 'Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
