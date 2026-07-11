import 'package:doctor_app/core/helpers/spacing.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(hasLowerCase, 'At least one lowercase letter'),
        verticalSpace(2),
        buildValidationRow(hasUpperCase, 'At least one uppercase letter'),
        verticalSpace(2),
        buildValidationRow(hasSpecialCharacter, 'At least one special character'),
        verticalSpace(2),
        buildValidationRow(hasNumber, 'At least one number'),
        verticalSpace(2),
        buildValidationRow(hasMinLength, 'At least 8 characters'),
      ],
    );
  }

  Widget buildValidationRow(bool isValid, String message) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.gray),
        horizontalSpace(6),
        Text(
          message,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: isValid ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: isValid ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
