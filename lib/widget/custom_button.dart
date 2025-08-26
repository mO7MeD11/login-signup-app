import 'package:flutter/material.dart';
import 'package:ro1/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Kprimary, Ksecondary],
        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(minimumSize: Size(200, 60)),
        child: Text(text),
      ),
    );
  }
}
