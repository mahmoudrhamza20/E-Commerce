import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/home/presentation/views/widgets/product_item_details_body.dart';
import '../../translations/locale_keys.g.dart';

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(
        title: LocaleKeys.productDetail.tr(),
      ),
      body: const ProductItemDetailsBody(),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.h,
        right: 85.w,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24.w,
      width: 24.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
