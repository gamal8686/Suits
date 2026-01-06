import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPasswordView> {
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
        padding: const EdgeInsets.all(17.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Create New Password',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Create your new password to login',

                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 24.h),
              AppInput(
                label: 'Enter your password',
                prefixIcon: AppImage(path: 'password.png'),
                isPassword: true,
              ),
              AppInput(
                label: 'Confirm your password',
                prefixIcon: AppImage(path: 'password.png'),
                isPassword: true,
              ),
            ],
          ),
        ),

    );
  }
}
