import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_text_form.dart';
import '../../../../core/widgets/product_item.dart';

class WeekPromotionItemDetailsView extends StatelessWidget {
  const WeekPromotionItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Week Promotion'),
      body: WeekPromotionItemDetailsViewBody() ,
    );
  }
}
class WeekPromotionItemDetailsViewBody extends StatelessWidget {
   WeekPromotionItemDetailsViewBody({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:  [
          SizedBox(height: 20.h,),
          CustomTextFormField(
            // isBorder: false,
            isPrefix:false ,
            suffix: Icons.search_outlined,
            controller: searchController,
            hintText: 'Search Product Name',
            prefix: Icons.lock_outline_rounded,
            // suffixPressed: (){},
            // onSubmitted: (value){},
            inputType: TextInputType.visiblePassword,
            validator: (data) {
              if (data!.isEmpty) {
                return ' enter what would you want to search about ';
              }
              return null;
            },
          ),
            SizedBox(height: 20.h,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.7,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (context, index) => const ProductItem(isdecs: true,),
            ),
          ),
        ],
      ),
    );
  }
}
