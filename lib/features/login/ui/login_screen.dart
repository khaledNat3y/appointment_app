import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/app_colors.dart';
import 'package:appointment_app/core/theming/app_theme.dart';
import 'package:appointment_app/core/widgets/already_have_account_text.dart';
import 'package:appointment_app/core/widgets/app_text_button.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/core/widgets/terms_and_conditions_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.w, horizontal: 30.w),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: AppTheme.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can\'t wait to see what you've been up to since you last \nlogged in.",
                  style: AppTheme.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: "Email",
                      ),
                      verticalSpace(8),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.darkBlue,
                            )),
                      ),
                      verticalSpace(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: AppTheme.font13BlueRegular,
                          )),
                      verticalSpace(40),
                      AppTextButton(
                          buttonText: "Login",
                          textStyle: AppTheme.font16WhiteMedium,
                          onPressed: () {}),
                      verticalSpace(16),
                      TermsAndConditionsText(),
                      verticalSpace(60),
                      AlreadyHaveAccountText(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
