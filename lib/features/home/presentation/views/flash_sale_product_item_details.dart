import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/product_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/widgets/bottom_sheets.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../cart/presentaion/view/cart_view.dart';

class FlashSaleProductItemDetails extends StatelessWidget {
  const FlashSaleProductItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FlashSaleProductItemDetailsBody(),
    );
  }
}

class FlashSaleProductItemDetailsBody extends StatelessWidget {
  const FlashSaleProductItemDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   backgroundColor: kBackground,
          //   pinned: false,
          //   expandedHeight: 250.0,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background:  SizedBox(width: double.infinity, child: CustomSlider()),
          //     title: Row(
          //       children: const [
          //         Text(
          //           'Product Details',
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SliverAppBar(
            backgroundColor: kBackground,
            pinned: false,
            expandedHeight: 250.0.h,
            centerTitle: true,
            title: Row(
              children: [
                Text(
                  '     ${LocaleKeys.productDetail.tr()}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => MagicRouter.navigateTo(const CartView()),
                  child: Container(
                    height: 35.w,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/3.jpeg',
                      ),
                    ],
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 40.h,
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Flash Sale',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '9',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          LocaleKeys.available.tr(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Compact Camera High..',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      const Row(
                        children: [
                          Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('\$200.99',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text('\$250',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough)),
                          const Spacer(),
                          Text(
                            '(65)',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.sp),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.black54,
                      ),
                      Text(
                        LocaleKeys.detailsProduct.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const DetailProductText(title: '(1) - MackBook Pro'),
                      const DetailProductText(title: '(2) - SSD 265 GB'),
                      const DetailProductText(title: '(3) - Ram 8 GB DDR4'),
                      const DetailProductText(title: '(4) - Non Touch Bar'),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        LocaleKeys.description.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14.sp,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                          onTap: () {
                            descriptionViewMore(context);
                          },
                          child: Center(
                              child: Text(
                            LocaleKeys.viewMore.tr(),
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor),
                          ))),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(LocaleKeys.topRatedProducts.tr(),
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis)),
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
                        height: MediaQuery.of(context).size.height * .4,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: ProductItem(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.w,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .72,
                            child: CustomButton(
                              text: LocaleKeys.pay.tr(),
                              textColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailProductText extends StatelessWidget {
  const DetailProductText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black54,
        ));
  }
}
