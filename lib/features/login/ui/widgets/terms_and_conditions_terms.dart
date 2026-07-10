import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsTerms extends StatelessWidget {
  const TermsAndConditionsTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
