import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/product_item.dart';
import '../../../drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';

class HomeCategorySubCategoryItemDetails extends StatelessWidget {
  const HomeCategorySubCategoryItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: drawerListTileAppBar(title: 'Mans'),
        body: const HomeCategorySubCategoryItemDetailsBody());
  }
}

class HomeCategorySubCategoryItemDetailsBody extends StatelessWidget {
  const HomeCategorySubCategoryItemDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.7,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (context, index) => const ProductItem(isdecs: true),
            ),
          ),
        ],
      ),
    );
  }
}
