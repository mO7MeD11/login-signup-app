import 'package:flutter/material.dart';
import 'package:ro1/widget/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashBody(), backgroundColor: Color(0xffffffff));
  }
}
