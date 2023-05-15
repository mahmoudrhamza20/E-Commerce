import 'package:e_commerce/core/widgets/product_item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/assets.dart';
import '../utils/constants.dart';
import '../utils/magic_router.dart';
import 'custom_rating_bar.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key, this.isdecs = false}) : super(key: key);
   final  bool isdecs;
  @override
  State<ProductItem> createState() => _ProductItemState();
}
class _ProductItemState extends State<ProductItem> {
    bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>MagicRouter. navigateTo(const ProductItemDetails()),
      child: SizedBox(
        width: MediaQuery.of(context).size.height * .28,
        height: MediaQuery.of(context).size.height * .45,
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          elevation: 0,
          color: Colors.white,
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16.0))),
                            content:Container(
                              width: MediaQuery.of(context).size.width*.25,
                              height: MediaQuery.of(context).size.height*.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                  child: Image.asset(
                                    AssetsData.bag1,
                                    height: 80.w,
                                    width: 80.w,
                                  )),
                            ),
                          );
                        },
                    );
                  },
                  child: Stack(
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
                              AssetsData.bag1,
                              height: 65.w,
                              width: 65.w,
                            )),
                      ),
                     widget.isdecs?  Container(
                        height: 20.h,
                        width: 45.w,
                        decoration: const BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),topLeft: Radius.circular(16))
                        ),
                        child: const Center(child: Text('10%',style: TextStyle(color: Colors.white,fontSize: 14))),
                      ): Container(),
                    ],
                  ),
                ),
                 SizedBox(height: 8.h,),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w),
                  child: SizedBox(
                    width: 170.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          'Nike Sports Shoes Man..',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text('\$100,00',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis, style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold)),
                            IconButton(
                              splashRadius: 1,
                              iconSize: 25.r,
                              onPressed: (){
                                setState(() {
                                  isFav = !isFav ;
                                });
                              },
                              icon: isFav? const Icon(  Icons.favorite,color: kPrimaryColor):const Icon(  Icons.favorite_outline,color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children:  [
                           const CustomRatingBar(),
                           const Spacer(),
                            Text('932 ',style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
                            Text('Sale',style: TextStyle(color: Colors.grey,fontSize: 12.sp),),
                          ],
                        )
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