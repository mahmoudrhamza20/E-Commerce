import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/product_item.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:  [
           SizedBox(height: 20.w,),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.72,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
              ),
              itemBuilder: (context, index) => const ProductItem(),
            ),
          ),
        ],
      ),
    );
  }
}
