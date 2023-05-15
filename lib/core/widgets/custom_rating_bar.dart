import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 16,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      glowColor: Colors.white,
      allowHalfRating: true,
      itemCount: 4,
      itemPadding:  EdgeInsets.symmetric(horizontal: .5.w),
      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber,),
      onRatingUpdate: (rating) {

      },
    );
  }
}