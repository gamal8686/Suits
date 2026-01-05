import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLoginOrRegister extends StatelessWidget {
  final bool isLogin;

  const AppLoginOrRegister({super.key, this.isLogin = true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          children: [
            TextSpan(
              text: isLogin ? "Didn’t receive the code? " : "Have an account?",
              style: TextStyle(
                color: Color(0xff434C6D),
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
            ),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                ),
                child: Text(
                  isLogin ? "Resend" : " Sign In",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
