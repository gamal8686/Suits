import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/splash_2.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      goTo(Splash2View());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,

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
