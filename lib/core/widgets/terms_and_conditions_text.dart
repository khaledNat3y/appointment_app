import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
            TextSpan(
            text: "By logging, you agree to our",
            style: AppTheme.font13GreyRegular),
            TextSpan(
            text: "Terms & Conditions", style: AppTheme.font13DarkBlueMedium),
            TextSpan(text: " and", style: AppTheme.font14GreyRegular.copyWith(height: 1.5)),
            TextSpan(text: " PrivacyPolicy.", style: AppTheme.font13DarkBlueMedium.copyWith(height: 1.5)),
      ]),
    );
  }
}
