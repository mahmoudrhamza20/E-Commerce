
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';import '../../../../core/widgets/product_item.dart';

class SubCategoryItemDetailsView extends StatelessWidget {
  const SubCategoryItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Action'),
      body: const SubCategoryItemDetailsViewBody()
    );
  }
}

class SubCategoryItemDetailsViewBody extends StatelessWidget {
  const SubCategoryItemDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:  [
           SizedBox(height: 20.h,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.72,
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
