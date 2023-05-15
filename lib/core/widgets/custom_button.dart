import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      required this.textColor,
      this.borderRadius,
      this.fontSize,
      required this.backgroundColor,
        this.onPressed,
        this.borderColor
      })
      : super(key: key);
  final String text;
  final Color textColor;
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final double? fontSize;
  final Color backgroundColor;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
