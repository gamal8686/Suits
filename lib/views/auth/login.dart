import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/cheek_masseg.dart';
import 'package:suits/core/components/app_button.dart';
import 'package:suits/core/components/app_google.dart';
import 'package:suits/core/components/app_image.dart';
import 'package:suits/core/components/app_input.dart';
import 'package:suits/core/components/app_validator.dart';
import 'package:suits/core/logic/helper_methods.dart';
import 'package:suits/views/auth/sign_up.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool isHiden = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: AppImage(path: 'arrow_lift.png', fit: BoxFit.contain),
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Welcome back, you’ve been missed',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 30.h),
                AppInput(
                  isCheek: true,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Forgot Password?'),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: AppButton(
                    width: 325.w,
                    text: 'Sign In',
                    onPressed: () {
                      formKey.currentState!.validate();
                      showDialog(
                        barrierColor: Colors.black45,
                        context: context,
                        builder: (context) =>
                            Center(child: AccountActivatedDialog()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            color: Color(0xff434C6D),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              visualDensity: VisualDensity.compact,
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                            ),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () {
                              goTo(SignUpview());
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Center(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA1A8B0),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                AppGoogle(text: 'Sign in with google', path: 'google.png'),
                AppGoogle(text: 'Sign in with Apple', path: 'apple.png'),
                AppGoogle(text: 'Sign in with Facebook', path: 'facebook.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
