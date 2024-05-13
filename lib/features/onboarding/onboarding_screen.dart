import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:appointment_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:appointment_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:appointment_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: AppTheme.font13GreyBold.copyWith(color: Colors.grey.withOpacity(0.8)), textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
