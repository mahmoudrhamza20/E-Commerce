
import 'package:e_commerce/features/drawer/presentation/view/sub_category_item_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/magic_router.dart';

class MenuSubCategoryItem extends StatelessWidget {
  const MenuSubCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>MagicRouter. navigateTo(const SubCategoryItemDetailsView()),
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
          const Text('Action',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 1,)
        ],
      ),
    );
  }
}