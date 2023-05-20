import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/product_choose_payment_method_view.dart';

class DetailsOfPayment extends StatelessWidget {
  const DetailsOfPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Details'),
      body: const DetailsOfPaymentBody(),
    );
  }
}

class DetailsOfPaymentBody extends StatelessWidget {
  const DetailsOfPaymentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           SizedBox(height: 20.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.bold),),
              InkWell(onTap: ()=>buildShowModalBottomSheetOfProductDetail(context, true),
                  child: const Text('Change',style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor),)),
            ],
          ),
           SizedBox(height: 10.h,),
          Text('36571201 Spring Hill Rd undefined Tallahassee, Nevada 5287420 United States',maxLines:2,style:Styles.textStyle12.copyWith(color:Colors.black45,overflow: TextOverflow.ellipsis) ,),
          SizedBox(height: 5.h,),
          Text('Mobile: 12345 12345',style:Styles.textStyle12.copyWith(color:Colors.black45,) ,),
          SizedBox(height: 30.h,),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*.23,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Payment Details',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                       Text('Subtotal:',style: TextStyle(color:Colors.grey.shade700),),
                      InkWell(onTap: ()=>buildShowModalBottomSheetOfProductDetail(context, true),
                          child: const Text('\$2,850.00',style: TextStyle(),)),
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                       Text('Taxes:',style: TextStyle(color:Colors.grey.shade700),),
                      InkWell(onTap: ()=>buildShowModalBottomSheetOfProductDetail(context, true),
                          child: const Text('\$40.00',style: TextStyle(),)),
                    ],
                  ),
                  const Divider(color: Colors.black54),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                       const Text('Total:',style: TextStyle(),),
                      InkWell(onTap: ()=>buildShowModalBottomSheetOfProductDetail(context, true),
                          child: const Text('\$2,890.00',style: TextStyle(fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          CustomButton(
            text: 'Continue to Payment',
            textColor: Colors.white,
            backgroundColor: kPrimaryColor,
            borderRadius: BorderRadius.circular(24),
            onPressed: ()=> MagicRouter. navigateTo(const ProductChoosePaymentMethodView()),
          ),
           SizedBox(height: 15.h,)
        ],
      ),
    );
  }
}
