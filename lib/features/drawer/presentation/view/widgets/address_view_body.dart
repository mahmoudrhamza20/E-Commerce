
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'address_item.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomScrollView(
        physics:const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:    [
                 SizedBox(height: 22.h,),
                ListView.builder(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) =>  Padding(
                    padding:  EdgeInsets.only(bottom: 8.h),
                    child: AddressItem(index: index,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}