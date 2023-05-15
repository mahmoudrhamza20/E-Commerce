import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Add Card'),
      body: AddCardViewBody(),
    );
  }
}

class AddCardViewBody extends StatelessWidget {
  AddCardViewBody({Key? key}) : super(key: key);
  final String cardNumber = '';
  final String expiryDate = '';
  final String cardHolderName = '';
  final String cvvCode = '';
  final bool isCvvFocused = false;
  final  bool useGlassMorphism = false;
  final  bool useBackgroundImage = false;
  final  OutlineInputBorder? border = const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: .5));
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(children: [
           SizedBox(
            height: 20.h,
          ),
          CreditCardWidget(
            glassmorphismConfig:
                useGlassMorphism ? Glassmorphism.defaultConfig() : null,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            bankName: 'Axis Bank',
            frontCardBorder:
                !useGlassMorphism ? Border.all(color: Colors.grey) : null,
            backCardBorder:
                !useGlassMorphism ? Border.all(color: Colors.grey) : null,
            showBackView: isCvvFocused,
            obscureCardNumber: true,
            obscureCardCvv: true,
            isHolderNameVisible: true,
            cardBgColor: kPrimaryColor,
            backgroundImage: useBackgroundImage ? 'assets/card_bg.png' : null,
            isSwipeGestureEnabled: true,
            onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
            customCardTypeIcons: <CustomCardTypeIcon>[
              CustomCardTypeIcon(
                cardType: CardType.mastercard,
                cardImage: Image.asset(
                  'assets/mastercard.png',
                  height: 48.w,
                  width: 48.w,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(children: <Widget>[
              CreditCardForm(
                formKey: formKey,
                obscureCvv: true,
                obscureNumber: true,
                cardNumber: cardNumber,
                cvvCode: cvvCode,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardHolderName: cardHolderName,
                expiryDate: expiryDate,
                themeColor: Colors.blue,
                textColor: Colors.black,
                cardNumberDecoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                expiryDateDecoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  labelText: 'Expired Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  labelText: 'Card Holder',
                ),
                onCreditCardModelChange: (CreditCardModel) {},
              )
            ]),
          ),
           SizedBox(height: 20.h,),
          CustomButton(
            borderRadius: BorderRadius.circular(24),
              text: 'Save',
              textColor: Colors.white,
              backgroundColor: kPrimaryColor,
            onPressed: ()=> MagicRouter.pop(),
          ),
         ]
        ),
    );
  }
}
