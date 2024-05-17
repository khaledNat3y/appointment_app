import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/theming/app_colors.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.isObscureText,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.suffixIcon,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColors.moreLightGrey,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(width: 1.3, color: AppColors.primaryColor),
              borderRadius: BorderRadius.circular(16.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(width: 1.3, color: AppColors.lighterGrey),
              borderRadius: BorderRadius.circular(16.0),
            ),

        hintText: hintText,
        hintStyle: hintStyle ?? AppTheme.font14LightGreyRegular,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: AppTheme.font14DarkBlueMedium,
    );
  }
}
