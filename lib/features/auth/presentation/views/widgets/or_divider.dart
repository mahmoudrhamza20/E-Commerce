import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_text_style.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.h,
          width: 134.w,
          color: Colors.grey[300],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Text(
            'OR',
            style: AppTextStyle.textStyle14.copyWith(
              color: const Color(0xff9098B1),
            ),
          ),
        ),
        Container(
          height: 1.h,
          width: 134.w,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
