import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_rating_bar.dart';
import '../../../../core/widgets/product_review_section.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Reviews'),
      body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
             Text('Review Product',style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.bold,),),
                SizedBox(height: 5.h,),
           const Row(
              children:  [
                CustomRatingBar(),
                Text('  4.5 ',style: TextStyle(color: Colors.black45),),
                Text('(5 Review)',style: TextStyle(color: Colors.black45),),
              ],
            ),
                SizedBox(height: 20.h,),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) =>  Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child:const ProductReview(),
                ),
              ),
            )
          ])),
    );
  }
}
