import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';


class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
        child:SizedBox(
          height: 250.h,
          width: 250.w,
          child: Lottie.asset('assets/json/progressIndicator.json'))
        );

  }
}
