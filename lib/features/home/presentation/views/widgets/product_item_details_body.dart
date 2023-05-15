import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_rating_bar.dart';
import '../../../../../core/widgets/product_item.dart';
import '../../../../../core/widgets/product_review_section.dart';
import '../reviews_view.dart';

class ProductItemDetailsBody extends StatelessWidget {
  const ProductItemDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
          children: [
             SizedBox(height: 20.h,),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*.2,
                width:MediaQuery.of(context).size.width*.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/bag1.png',)
                    )
                ),
              ),
            ),
             SizedBox(height: 10.h,),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(76),)
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       SizedBox(height: 20.h,),
                       Text('Mentli Solid Brown Bag...',maxLines: 2,style: TextStyle(fontSize: 18.sp,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                      Row(
                        children: const [
                          Spacer(),
                          Icon(Icons.star,color: Colors.yellow,),
                          Text('4.5',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children:   [
                          Text('\$200.99',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis, style: TextStyle(fontSize:18.sp,color: kPrimaryColor, fontWeight: FontWeight.bold)),
                        const  Spacer(),
                          Text('(932 Sale)',style: TextStyle(color: Colors.grey,fontSize: 16.sp),)
                        ],
                      ),
                      const Divider(color: Colors.black54,),
                       SizedBox(height: 10.h,),
                      const Text('Description',style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                       SizedBox(height: 5.h,),
                       Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                        style: TextStyle(color: Colors.black54,fontSize: 14.sp,overflow: TextOverflow.ellipsis),maxLines: 5,),
                       SizedBox(height: 10.h,),
                      InkWell(
                          onTap: (){
                            descriptionViewMore(context);
                          },
                          child:  Center(child: Text('View More ',style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.bold,color: kPrimaryColor),))),
                       SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:   [
                           Text('Review Product',style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.bold,),),
                          InkWell(onTap: ()=>MagicRouter. navigateTo(const ReviewsView()),child: const Text('View all >>',style: TextStyle(color: kPrimaryColor),)),
                        ],
                      ),
                      const SizedBox(height: 3,),
                      Row(
                        children: const [
                          CustomRatingBar(),
                          Text('  4.5 ',style: TextStyle(color: Colors.black45),),
                          Text('(5 Review)',style: TextStyle(color: Colors.black45),),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      const ProductReview(),
                      const ProductReview(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:    [
                          Text('Top Rated Products',style: TextStyle(fontSize: 16.sp,fontWeight:FontWeight.bold,),),
                         const Text('View all >>',style: TextStyle(color: kPrimaryColor),),
                        ],
                      ),
                       SizedBox(height: 10.h,),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .42,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: 3,
                          scrollDirection:Axis.horizontal ,
                          itemBuilder: (context, index) => const ProductItem(),
                        ),
                      ),
                       SizedBox(height: 10.h,),
                      Row(
                        children:  [
                          Container(
                            height: 50.w,
                            width: 50.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: const Icon(Icons.shopping_cart_outlined,color: Colors.grey,),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*.72,
                            child: CustomButton(
                              text: 'Pay',
                              textColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              borderRadius: BorderRadius.circular(16),
                              onPressed: (){
                                buildShowModalBottomSheetOfProductDetail(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),
            )
          ]
      ),
    );
  }

}