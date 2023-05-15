
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_slider.dart';
import 'package:e_commerce/core/widgets/flash_sale_product_item.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FlashSaleView extends StatelessWidget {
  const FlashSaleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Flash Sale'),
      body: const FlashSaleViewBody(),
    );
  }
}
class FlashSaleViewBody extends StatelessWidget {
  const FlashSaleViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('End in ',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('23:24:05 ',style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor),),
              ],
            ),
            const SizedBox(height: 6,),
            const SizedBox(
              //  height: MediaQuery.of(context).size.height*.15,
                child: CustomSlider(),
            ),
             SizedBox(height: 6.h,),
            GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.7,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (context, index) => const FlashSaleProductItem(),
            ),
          ],
        ),
      ),
    );
  }
}
