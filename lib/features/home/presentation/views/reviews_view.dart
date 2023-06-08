import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../../core/widgets/product_review_section.dart';
import '../../../../translations/locale_keys.g.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(
        title: LocaleKeys.reviews.tr(),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              LocaleKeys.reviewProduct.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                const CustomRatingBar(),
                const Text(
                  '  4.5 ',
                  style: TextStyle(color: Colors.black45),
                ),
                Text(
                  '(5 ${LocaleKeys.reviews.tr()})',
                  style: const TextStyle(color: Colors.black45),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: const ProductReview(),
                ),
              ),
            )
          ])),
    );
  }
}
