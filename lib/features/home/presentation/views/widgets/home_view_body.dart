import 'package:e_commerce/features/drawer/presentation/view/widgets/menu_item.dart';
import 'package:e_commerce/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_slider.dart';
import '../../../../../core/widgets/product_item.dart';
import '../../../../drawer/presentation/view/all_categories_view.dart';
import '../flash_sale_view.dart';
import '../recommended_view.dart';
import '../week_promotion_item_details_view.dart';
import 'home_category_item_details_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            const CustomSlider(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.menu.tr(),
                  style: TextStyle(fontSize: 18.sp),
                ),
                InkWell(
                    onTap: () =>
                        MagicRouter.navigateTo(const AllCategoriesView()),
                    child: Text(
                      LocaleKeys.viewAll.tr(),
                      style: const TextStyle(color: kPrimaryColor),
                    )),
              ],
            ),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const MenuItem(),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              LocaleKeys.weekPromotion.tr(),
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 125.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: const WeekPromotionItem(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const SuperFlashSale(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              LocaleKeys.category.tr(),
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 130.h,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: const HomeCategoryItem(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocaleKeys.recommended.tr(),
                  style: TextStyle(fontSize: 18.sp),
                ),
                InkWell(
                    onTap: () =>
                        MagicRouter.navigateTo(const RecommendedView()),
                    child: Text(
                      LocaleKeys.viewAll.tr(),
                      style: const TextStyle(color: kPrimaryColor),
                    )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.72,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (context, index) => const ProductItem(),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MagicRouter.navigateTo(const HomeCategoryItemDetailsView()),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 120.w,
            height: 130.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    opacity: .65,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/1.png',
                    ))),
          ),
          Positioned(
              bottom: 10,
              child: SizedBox(
                  width: 100.w,
                  child: Text(
                    'Fashion Man',
                    style: TextStyle(
                      fontSize: 15.sp,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )))
        ],
      ),
    );
  }
}

class SuperFlashSale extends StatelessWidget {
  const SuperFlashSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MagicRouter.navigateTo(const FlashSaleView()),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .18,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/2.jpg'), opacity: .7)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Super Flash Sale 50% Off',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
                maxLines: 2,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 10,
              child: Text(
                LocaleKeys.endSaleIn.tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  const EndSaleContainer(title: '08'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      ':',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const EndSaleContainer(title: '34'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      ':',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const EndSaleContainer(title: '52'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EndSaleContainer extends StatelessWidget {
  const EndSaleContainer({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 30.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Center(child: Text(title)),
    );
  }
}

class WeekPromotionItem extends StatelessWidget {
  const WeekPromotionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => MagicRouter.navigateTo(const WeekPromotionItemDetailsView()),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120.w,
            height: 140.w,
            decoration: BoxDecoration(
                color: Colors.blue.shade100.withOpacity(.5),
                borderRadius: BorderRadius.circular(16)),
          ),
          Column(
            children: [
              const SizedBox(
                height: 2,
              ),
              Image.asset(
                'assets/images/bag.png',
                height: 70.w,
                width: 75.w,
              ),
              SizedBox(
                width: 100.w,
                child: Text(
                  '${LocaleKeys.discount.tr()} 10%',
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
