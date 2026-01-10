import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';
import 'package:suits/core/components/app_validator.dart';
import 'package:suits/core/logic/dio_helper.dart';
import 'package:suits/core/logic/helper_methods.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPasswordView> {
  final _formKey = GlobalKey<FormState>();
  final _password = TextEditingController();
  final _newPassword = TextEditingController();

  Future<void> sendData() async {
    final resp = await DioHelper.sendData();
    if (resp.isSuccess) {
      showMessage(resp.mag);
    } else {
      showMessage(resp.mag, isError: true);
    }
  }

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

        child: Form(
          key: _formKey,
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
                validator: InputValidator.passwordValidator,
                controller: _password,
                label: 'Enter your password',
                prefixIcon: AppImage(path: 'password.png'),
                isPassword: true,
              ),
              AppInput(
                validator: InputValidator.passwordValidator,
                controller: _newPassword,
                label: 'Confirm your password',
                prefixIcon: AppImage(path: 'password.png'),
                isPassword: true,
              ),
              SizedBox(height: 20.h),
              AppButton(
                text: 'Create Password',
                width: 370.w,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                  sendData();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
