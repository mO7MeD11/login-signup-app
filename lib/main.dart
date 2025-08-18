import 'package:flutter/material.dart';
import 'package:ro1/views/signup_view.dart';
import 'package:ro1/views/splash_view.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignupView());
  }
}
