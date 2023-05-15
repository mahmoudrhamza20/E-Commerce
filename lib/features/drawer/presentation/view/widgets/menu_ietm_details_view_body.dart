import 'package:e_commerce/features/drawer/presentation/view/sub_category_view_all.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/sub_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_slider.dart';
import 'menu_item_details_ view_Section.dart';

class MenuItemDetailsViewBody extends StatelessWidget {
  const MenuItemDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 20.h,),
           const CustomSlider(),
             SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                 Text('Sub Category',style: TextStyle(fontSize: 18.sp),),
                InkWell(onTap: ()=>MagicRouter. navigateTo(const SubCategoryViewAll()),child: const Text('View all >>',style: TextStyle(color: kPrimaryColor),)),
              ],
            ),
             SizedBox(height: 10.h,),
            SizedBox(
              height: 100.h,
              child: GridView.builder(
                scrollDirection:Axis.horizontal ,
                physics: const BouncingScrollPhysics(),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2 / 2.6,
                  crossAxisSpacing: 1,
                  mainAxisSpacing:1,
                ),
                itemBuilder: (context, index) => const MenuSubCategoryItem(),
              ),
            ),
             SizedBox(height: 10.h,),
            const MenuItemDetailsViewSection(title: 'Item Discount'),
            SizedBox(height: 10.h,),
            const MenuItemDetailsViewSection(title: 'Item Popular'),
            SizedBox(height: 10.h,),
            const MenuItemDetailsViewSection(title: 'New Item'),
          ],
        ),
      ),
    );
  }
}