import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../utils/app_text_style.dart';
import 'custom_rating_bar.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: kBackground,
              radius: 23.r,
              child: Image.asset('assets/images/avater.png'),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'James Lawson',
                  style: AppTextStyle.textStyle14.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.black),
                ),
                const CustomRatingBar(),
              ],
            ),
            const Spacer(),
            Text(
              DateFormat.yMMMMEEEEd().format(DateTime.now()),
              style: AppTextStyle.textStyle12
                  .copyWith(fontSize: 10.sp, color: const Color(0xff9098B1)),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
            maxLines: 3,
            style: AppTextStyle.textStyle12.copyWith(
              color: Colors.black54,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
