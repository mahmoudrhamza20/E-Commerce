import 'dart:developer';
import 'package:e_commerce/features/auth/presentation/views/reset_password_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';

class VerifyCodeView extends StatelessWidget {
   VerifyCodeView({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    height: 32.h,
                  ),
                   SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Phone Verification',
                    style: Styles.textStyle24.copyWith(
                        color: const Color(0xff223263)),
                  ),
                   SizedBox(
                    height: 8.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'please enter the 4- digit code send to you at ',
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
                        SizedBox(height: 10.h,),
                      InkWell(
                          onTap:(){},
                          child: Text('Resend Code',style: Styles.textStyle14.copyWith(color: kPrimaryColor),)),
                       SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        CustomPinCode(defaultPinTheme: defaultPinTheme),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height:  MediaQuery.of(context).size.height*0.3,),
                  CustomButton(text: 'Reset Password',
                      textColor: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      backgroundColor: kPrimaryColor.withOpacity(.9),
                      onPressed: () {
                        MagicRouter. navigateTo(const ResetPasswordView());
                      }
                  ),
                ],
              ),
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
    return Pinput(
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
      return s == '2222' ? null : 'Pin is incorrect';
    },
    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    showCursor: true,
    onCompleted: (pin) => log(pin),
                      );
  }
}


