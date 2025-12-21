import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/on_bording.dart';

class Splash2View extends StatefulWidget {
  const Splash2View({super.key});

  @override
  State<Splash2View> createState() => _Splash2ViewState();
}

class _Splash2ViewState extends State<Splash2View> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      goTo(OnBoardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff676767),
      body: Center(
        child: Container(
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
