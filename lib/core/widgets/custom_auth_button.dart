import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

Widget customAuthButton({required String text, required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50.h,
      width: 280.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          color: kPrimaryColor
      ),
      child: Center(
        child: Text(
            text,
            style: Styles.textStyle16.copyWith(color: Colors.white)
        ),
      ),
    ),
  );
}