import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_image.dart';

class AppBall extends StatelessWidget {
  const AppBall({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.centerLeft,
        child: CircleAvatar(
          backgroundColor: Color(0xff1010100d).withValues(alpha: 0.05),
          radius: 15,
          child: AppImage(path: 'bell.png', height: 20.h, width: 20.w),
        ),
      ),
    );
  }
}
