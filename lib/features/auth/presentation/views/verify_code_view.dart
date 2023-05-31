import 'dart:async';
import 'dart:developer';
import 'package:e_commerce/features/auth/presentation/views/reset_password_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../../translations/locale_keys.g.dart';

class VerifyCodeView extends StatefulWidget {
 const  VerifyCodeView({Key? key}) : super(key: key);

  @override
  State<VerifyCodeView> createState() => _VerifyCodeViewState();
}

class _VerifyCodeViewState extends State<VerifyCodeView> {
   final  defaultPinTheme = PinTheme(
     width: 56.w,
     height: 56.w,
     textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
     decoration: BoxDecoration(
       color: Colors.grey.shade300,
       borderRadius: BorderRadius.circular(30),
       //border: Border.all(color: Colors.grey),
     ),
   );

   int timeLeft = 0;

  void _startCountDown() {
    timeLeft = 30;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(color: Colors.black, ) ,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 50.h,
                ),
                  Text(
                  LocaleKeys.phoneVerification.tr(),
                  style: Styles.textStyle24.copyWith(
                      color: const Color(0xff223263)),
                ),
                 SizedBox(
                  height: 8.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                     LocaleKeys.pleaseenterthedigitscodesendtoyouat.tr(),
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      '+91 12345 67890',
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.bold,
                          color: const Color(0xff9098B1),),
                    ),
                      SizedBox(height: 30.h,), 
                    CustomPinCode(defaultPinTheme: defaultPinTheme),
                        timeLeft == 0
                      ? InkWell(
                          onTap: _startCountDown,
                          child: Text(LocaleKeys.resendCode.tr(),
                              style: Styles.textStyle16.copyWith(
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                              )))
                      : Text(
                          "${LocaleKeys.resendCode.tr()} ( 0:${timeLeft.toString()} )",
                          style: Styles.textStyle16.copyWith(
                            color: kPrimaryColor,
                            decoration: TextDecoration.underline,
                          )),
                  ],
                ),
                // SizedBox(
                //   height:  MediaQuery.of(context).size.height*0.3,),
                // CustomButton(text: LocaleKeys.resetPassword.tr(),
                //     textColor: Colors.white,
                //     borderRadius: BorderRadius.circular(25),
                //     backgroundColor: kPrimaryColor.withOpacity(.9),
                //     onPressed: () {
                //       MagicRouter. navigateTo(const ResetPasswordView());
                //     }
                // )
              
              ],
            ),
          ),
        ),
      ),
    );

  }
}

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({
    super.key,
    required this.defaultPinTheme,
  });

  final PinTheme defaultPinTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 80.h,
      child: Pinput(
       length: 6,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            border: Border.all(color: kPrimaryColor),),),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: kPrimaryColor),
          ),
        ),
      validator: (s) {
          s == '222222'
              ? MagicRouter.navigateTo(const ResetPasswordView())
              : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: kPrimaryColor,
                  content: Text(
                    LocaleKeys.pinCodeIncorrect.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15),
                  ),
                ));
          return null;
        },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => log(pin),
          ),
    );
  }
}


