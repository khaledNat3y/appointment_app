import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Already have an account?", style: AppTheme.font13DarkBlueRegular,),
          TextSpan(text: "Sign Up", style: AppTheme.font13BlueSemiBold),
        ]
      ),
    );
  }
}
