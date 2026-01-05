import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/login.dart';
import 'package:suits/views/on_bording.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Color backgroundColor = Color(0xffDD8560);

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      setState(() {
        backgroundColor = Color(0xff676767);
      });
    });
    Timer(Duration(seconds: 6), () {
      goTo(OnBoardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        color: backgroundColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(path: 'logo.svg'),
              SizedBox(width: 10.w),
              Text(
                'suits',
                style: TextStyle(
                  fontFamily: 'Waterfall',
                  fontSize: 128.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
