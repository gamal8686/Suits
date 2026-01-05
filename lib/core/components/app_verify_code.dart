import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppVerifyCode extends StatelessWidget {
  const AppVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.r, right: 17.r),
      child: PinCodeTextField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,

        appContext: context,
        cursorColor: Theme.of(context).primaryColor,

        length: 4,
        backgroundColor: Theme.of(
          context,
        ).primaryColor.withValues(alpha: 0.040),
        pinTheme: PinTheme(
          inactiveFillColor: Theme.of(context).primaryColor,

          selectedColor: Theme.of(context).primaryColor,
          activeColor: Theme.of(context).primaryColor,
          inactiveColor: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),

          fieldWidth: 65.w,
          fieldHeight: 65.h,
          shape: PinCodeFieldShape.box,
        ),
      ),
    );
  }
}
