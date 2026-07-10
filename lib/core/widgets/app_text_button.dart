import 'package:doctor_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? bottonWidth;
  final double? bottonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.bottonWidth,
    this.bottonHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding?.w ?? 12.w,
          vertical: verticalPadding?.h ?? 14.h,
        ),
        fixedSize: Size(bottonWidth?.w ?? double.maxFinite, bottonHeight?.h ?? 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
