import 'package:e_commerce/core/utils/assets.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBrandDetailsView extends StatelessWidget {
  const CategoryBrandDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
               SliverAppBar(
                backgroundColor: kBackground,
                pinned: false,
                expandedHeight: 250.0.h,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background:Stack(
                    children: [
                      SizedBox(width: double.infinity,child: Image.asset(AssetsData.background,fit: BoxFit.cover)),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white.withOpacity(.3),
                      )
                    ],
                  ) ,
                 title:  Text('Nike Sports',style: TextStyle(color: Colors.black54,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                ),
              ),
               SliverToBoxAdapter(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       SizedBox(height: 20.h,),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.65,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                        ),
                        itemBuilder: (context, index) => const ProductItem(),
                      ),
                    //  const ProductItem(),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

