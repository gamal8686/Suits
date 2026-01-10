import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final double? width;
  final void Function() onPressed;
  final double? height;
  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.isLoading = false,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator(strokeAlign: 0.9));
    }
    return SizedBox(
      height: height,
      width: width,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
