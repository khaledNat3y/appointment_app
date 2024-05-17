import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/app_colors.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget  {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      context.pushNamed(Routes.loginScreen);
    },
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
          elevation: MaterialStateProperty.all(0),
      ),
      child: Container(
          width: double.infinity,
          height: 52,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(16)
          ),
          child: Text("Get Started", style: AppTheme.font16WhiteMedium,)),
    );
  }
}
