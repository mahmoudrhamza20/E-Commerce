import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/product_item.dart';
import '../../../../../translations/locale_keys.g.dart';

class MenuItemDetailsViewSection extends StatelessWidget {
  const MenuItemDetailsViewSection({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp),
            ),
            Text(
              LocaleKeys.viewAll.tr(),
              style: const TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const ProductItem(isdecs: true),
          ),
        ),
      ],
    );
  }
}
