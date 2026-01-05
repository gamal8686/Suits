import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_login_or_register.dart';
import 'package:suits/core/components/app_verify_code.dart';

class EnterVerificationCode extends StatelessWidget {
  const EnterVerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(
          path: 'arrow_lift.png',
          fit: BoxFit.contain,
          width: 24.w,
          height: 24.h,
        ),

        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Text(
                'Enter Verification Code ?',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10.h),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Enter code that we have sent to your \n'),

                    TextSpan(text: 'number'),

                    TextSpan(
                      text: '+123 456 7890',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 33.h),
              AppVerifyCode(),
              SizedBox(height: 30.h),
              AppButton(text: 'Verify', onPressed: () {}, width: 330.w),
              SizedBox(height: 20.h),
              AppLoginOrRegister(isLogin: true),
            ],
          ),
        ),
      ),
    );
  }
}
