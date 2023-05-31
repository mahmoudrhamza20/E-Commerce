import 'package:e_commerce/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/magic_router.dart';
import 'category_brand_details_view.dart';

class CategoryBrandViewBody extends StatelessWidget {
  const CategoryBrandViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:   [
           SizedBox(height: 20.h,),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) =>  Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child:const  CategoryBrandItem(),
                ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryBrandItem extends StatelessWidget {
  const CategoryBrandItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        MagicRouter. navigateTo(const CategoryBrandDetailsView());
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                 fit: BoxFit.cover,
                image: AssetImage(AppAssets.background),
              )
            ) ),
          const Text('Nike Sports',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

