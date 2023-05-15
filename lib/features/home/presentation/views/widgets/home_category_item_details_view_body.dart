import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_slider.dart';
import '../../../../drawer/presentation/view/widgets/menu_item_details_ view_Section.dart';
import '../home__sub_category_view_all.dart';
import '../home_category_sub_category_item_details.dart';

class HomeCategoryItemDetailsViewBody extends StatelessWidget {
  const HomeCategoryItemDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 20.h,),
          const  CustomSlider(),
             SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:   [
                  Text('Sub Category',style: TextStyle(fontSize: 18.sp),),
                InkWell(onTap: ()=>MagicRouter. navigateTo(const HomeSubCategoryViewAll()),child: const Text('View all >>',style: TextStyle(color: kPrimaryColor),)),
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
                itemBuilder: (context, index) => const HomeCategorySubCategoryItem(),
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

class HomeCategorySubCategoryItem extends StatelessWidget {
  const HomeCategorySubCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>MagicRouter. navigateTo(const HomeCategorySubCategoryItemDetails()),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 40.h,
            width: 95.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    alignment: Alignment.center,
                    opacity: .7,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/2.jpg',)
                )
            ),
          ),
          const Text('Mans',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 1,)
        ],
      ),
    );
  }
}