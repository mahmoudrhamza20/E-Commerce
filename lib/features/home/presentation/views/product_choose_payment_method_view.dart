
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/widgets/credit_item.dart';
import '../../../drawer/presentation/view/add_card_view.dart';

class ProductChoosePaymentMethodView extends StatelessWidget {
  const ProductChoosePaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Payment'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children:  [
             SizedBox(height: 20.h,),
             Text('Choose your payment method',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) =>     Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child:const CreditItem(),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () =>MagicRouter. navigateTo(const AddCardView()),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                   border: Border.all(color: kPrimaryColor,)
                ),
                child: const Text('+ Add New Card',style: TextStyle(color: kPrimaryColor)),
              ),
            ),
            const SizedBox(height: 40,),
             CustomButton(
                text: 'Pay',
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(42),
               onPressed: (){
                 AwesomeDialog(
                     context: context,
                     dialogType: DialogType.success,
                     animType: AnimType.rightSlide,
                     title: 'Payed Success',
                 ).show();
               },
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
