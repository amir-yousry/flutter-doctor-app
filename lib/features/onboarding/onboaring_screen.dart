import 'package:doctor_app/core/theme/styles.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_app/features/onboarding/widgets/doc_logo_and_name.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 20.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        textAlign: TextAlign.center,
                        style: TextStyles.font13GrayRegular,
                      ),
                      SizedBox(height: 20.h),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
