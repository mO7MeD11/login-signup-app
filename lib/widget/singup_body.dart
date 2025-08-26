import 'package:flutter/material.dart';
import 'package:ro1/widget/custom_button.dart';
import 'package:ro1/widget/cutom_text_form.dart';

class SingupBody extends StatelessWidget {
  const SingupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),

        Center(
          child: Text(
            'Let’s Get Started!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Center(
          child: Text(
            ' Create an account on MNZL to get all features',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
        ),
        CutomTextForm(icon: Icon(Icons.person), text: 'First Name'),
        CutomTextForm(icon: Icon(Icons.person), text: 'Last Name'),
        CutomTextForm(icon: Icon(Icons.person), text: 'User Name'),
        CutomTextForm(icon: Icon(Icons.email), text: 'Email'),
        CutomTextForm(icon: Icon(Icons.lock), text: 'Password'),
        CutomTextForm(icon: Icon(Icons.lock), text: 'Confirm Password'),

        CustomButton(text: 'CREATE'),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Login here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
