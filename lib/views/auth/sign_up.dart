import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';
import 'package:suits/core/components/app_login_or_register.dart';
import 'package:suits/core/components/app_validator.dart';

class SignUpview extends StatelessWidget {
  const SignUpview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(path: 'arrow_lift.png', fit: BoxFit.contain),
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(17.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            AppInput(
              label: 'Enter your name',

              prefixIcon: AppImage(
                path: 'parson.png',
                height: 24.h,
                width: 24.w,
              ),
            ),
            AppInput(
              prefixIcon: AppImage(
                path: 'mail.png',
                color: Theme.of(context).primaryColor,
                width: 20.w,
                height: 20.h,
              ),
              label: 'Enter your email',
            ),
            AppInput(
              validator: InputValidator.passwordValidator,

              isPassword: true,
              isKeyboardType: true,
              prefixIcon: AppImage(
                path: 'password.png',

                width: 20.w,
                height: 20.h,
              ),
              label: 'Enter your password',
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color(0xffD9D9D9)),
                  ),
                  height: 25.h,
                  width: 25.w,
                ),
                SizedBox(width: 9.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'I agree to the ',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Terms of Service ',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'and ',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 38.h),
            Center(
              child: AppButton(text: 'Sign Up', onPressed: () {}, width: 330.w),
            ),
            SizedBox(height: 32.h),
            Center(child: AppLoginOrRegister(isLogin: false)),
          ],
        ),
      ),
    );
  }
}
