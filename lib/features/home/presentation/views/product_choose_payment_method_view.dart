import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/widgets/credit_item.dart';
import '../../../../translations/locale_keys.g.dart';
import '../../../drawer/presentation/view/add_card_view.dart';

class ProductChoosePaymentMethodView extends StatefulWidget {
  const ProductChoosePaymentMethodView({Key? key}) : super(key: key);

  @override
  State<ProductChoosePaymentMethodView> createState() =>
      _ProductChoosePaymentMethodViewState();
}

class _ProductChoosePaymentMethodViewState
    extends State<ProductChoosePaymentMethodView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: LocaleKeys.payment.tr()),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              LocaleKeys.chooseyourpaymentmethod.tr(),
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: InkWell(
                      onTap: () {
                        currentIndex = index;
                        setState(() {});
                      },
                      child: CreditItem(isSelected: currentIndex == index)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => MagicRouter.navigateTo(const AddCardView()),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: kPrimaryColor,
                    )),
                child: Text(LocaleKeys.addNewCard.tr(),
                    style: const TextStyle(color: kPrimaryColor)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              text: LocaleKeys.pay.tr(),
              textColor: Colors.white,
              backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(42),
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: LocaleKeys.payedSuccess.tr(),
                ).show();
              },
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
