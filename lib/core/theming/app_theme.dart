// fontSize: 24.sp,
// fontWeight: FontWeight.w700,
// color: AppColors.black,
import 'package:appointment_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppTheme {
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.black
  );

  static TextStyle font32lueBold = TextStyle(
    fontSize: 32.sp,
      fontWeight: FontWeight.bold,
    color: AppColors.primaryColor
  );

  static TextStyle font13GreyBold = TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
}