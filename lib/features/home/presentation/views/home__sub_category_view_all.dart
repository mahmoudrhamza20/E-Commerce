
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_category_item_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeSubCategoryViewAll extends StatelessWidget {
  const HomeSubCategoryViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Sub Category'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
             SizedBox(height: 20.h,),
            SizedBox(
              height: MediaQuery.of(context).size.height*.8,
              child: GridView.builder(
                // scrollDirection:Axis.horizontal ,
                physics: const BouncingScrollPhysics(),
                itemCount: 15,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.2/ 1.2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing:1,
                ),
                itemBuilder: (context, index) => const HomeCategorySubCategoryItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
