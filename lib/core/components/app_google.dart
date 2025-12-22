import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/components/app_image.dart';

class AppGoogle extends StatelessWidget {
  final String text;
  final String path;
  const AppGoogle({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
          height: 60.h,
          width: 325.w,
          decoration: BoxDecoration(
            color: Colors.white,

            borderRadius: BorderRadius.circular(23.r),
            border: Border.all(color: Color(0xffE5E7EB)),
          ),
          child: Row(
            children: [
              SizedBox(width: 30.w),
              AppImage(path: path, width: 30.w, height: 30.h),
              SizedBox(width: 50.w),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
