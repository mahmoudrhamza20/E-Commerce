import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../features/home/presentation/views/flash_sale_product_item_details.dart';
import '../../translations/locale_keys.g.dart';
import 'custom_rating_bar.dart';

class FlashSaleProductItem extends StatefulWidget {
  const FlashSaleProductItem({Key? key, this.isdecs = false}) : super(key: key);
  final bool isdecs;
  @override
  State<FlashSaleProductItem> createState() => _FlashSaleProductItemState();
}

class _FlashSaleProductItemState extends State<FlashSaleProductItem> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MagicRouter.navigateTo(const FlashSaleProductItemDetails()),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .28,
        height: MediaQuery.of(context).size.height * .47,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0.r))),
          elevation: 0,
          color: Colors.white,
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * .28,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                          child: Image.asset(
                        AppAssets.bag1,
                        height: 65.w,
                        width: 65.w,
                      )),
                    ),
                    widget.isdecs
                        ? Container(
                            height: 20.h,
                            width: 45.w,
                            decoration: const BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                    topLeft: Radius.circular(16))),
                            child: Center(
                                child: Text('10%',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp))),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: SizedBox(
                    width: 170.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Action Camera HDR..',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            const Text('\$200',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 6.w,
                            ),
                            const Text('\$250',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough)),
                          ],
                        ),
                        Row(
                          children: [
                            const CustomRatingBar(),
                            const Spacer(),
                            IconButton(
                              splashRadius: 1,
                              iconSize: 25.r,
                              onPressed: () {
                                setState(() {
                                  isFav = !isFav;
                                });
                              },
                              icon: isFav
                                  ? const Icon(Icons.favorite,
                                      color: kPrimaryColor)
                                  : const Icon(Icons.favorite_outline,
                                      color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '7 ',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12.sp),
                            ),
                            Text(
                              LocaleKeys.available.tr(),
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
