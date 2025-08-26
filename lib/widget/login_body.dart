import 'package:flutter/material.dart';
import 'package:ro1/views/signup_view.dart';
import 'package:ro1/widget/custom_button.dart';
import 'package:ro1/widget/custom_text.dart';
import 'package:ro1/widget/cutom_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 10,
          child: Image.asset(
            width: 350,
            height: 150,
            'assets/font/image/Rectangle 12.png',
          ),
        ),

        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            'assets/font/image/Rectangle 11.png',
            width: 250,
            height: 150,
          ),
        ),

        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Column(
            children: [
              CustomText(),
              SizedBox(height: 20),
              Text(
                'Welcome back!',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Log in to existing LOGO account',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              CutomTextForm(icon: Icon(Icons.person), text: 'Username'),
              CutomTextForm(icon: Icon(Icons.lock), text: 'Username'),

              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text(style: TextStyle(), 'Forgot Password?')],
                ),
              ),
              SizedBox(height: 20),
              CustomButton(text: 'LOG IN'),
              Text('Or sign up using'),
              SizedBox(height: 10),
              Image.asset('assets/font/image/Group 35.png'),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupView();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
