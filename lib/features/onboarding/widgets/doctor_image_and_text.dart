import 'package:appointment_app/core/theming/app_colors.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      children: [
        SvgPicture.asset("assets/svgs/doc_logo_low_opacity.svg"),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.white, AppColors.white.withOpacity(0.0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  stops: const [0.14, 0.4]),
            ),
            child: Image.asset("assets/images/onboarding_doctor.png")),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: AppTheme.font32lueBold.copyWith(height: 1.4),
          ),
        ),

      ],
    );
  }
}
