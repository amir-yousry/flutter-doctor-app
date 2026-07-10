import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: TextStyles.font13DarkBlueRegular,
        children: [
          TextSpan(text: 'Sign In', style: TextStyles.font13BlueSemiBold),
        ],
      ),
    );
  }
}
