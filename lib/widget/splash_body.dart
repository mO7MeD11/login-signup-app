import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ro1/const.dart';
import 'package:ro1/views/login_view.dart';
import 'package:ro1/widget/custom_text.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return LoginView();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Stack(
          children: [
            Positioned(
              height: 303 - 50,

              left: 129,

              child: Container(height: 500, width: 1, color: Color(0xff8CD6F7)),
            ),
            Positioned(
              height: 333 - 50,

              left: 71,

              child: Container(height: 500, width: 1, color: Color(0xff8CD6F7)),
            ),

            Positioned(
              top: 149 - 50,
              left: 90,
              height: 200 - 50,
              width: 209,
              child: CustomText(),
            ),
            Positioned(
              top: 315.17 - 50,
              left: 102.13,

              child: SizedBox(
                width: 53,
                height: 33,
                child: SvgPicture.asset('assets/font/image/Group.svg'),
              ),
            ),

            Positioned(
              top: 330.48 - 50,
              left: 44.64,

              child: SizedBox(
                width: 53,
                height: 33,
                child: SvgPicture.asset('assets/font/image/Group.svg'),
              ),
            ),

            Positioned(
              top: 330.48,
              left: 0,
              right: 0,

              child: SizedBox(
                child: Image.asset(
                  'assets/font/image/731_generated.jpg',
                  width: 800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
