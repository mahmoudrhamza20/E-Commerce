import 'dart:developer';
import 'package:e_commerce/features/auth/presentation/views/verify_code_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Forget Your Password?',
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
                      'If You need help resetting your password ',
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),
                    ),
                    Text(
                      'We can help you sending you a link to reset it. ',
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),
                    ),
                  ],
                ),
                 SizedBox(
                  height:80.h
                ),
                IntlPhoneField(
                  decoration:const  InputDecoration(
                    hintText: 'Your Phone Number',
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    log(phone.completeNumber);
                  },
                ),
                 SizedBox(height: 30.h,),
                SizedBox(height:  MediaQuery.of(context).size.height*0.25,),
                CustomButton(text: 'Next',
                    textColor: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    backgroundColor: kPrimaryColor.withOpacity(.9),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                       MagicRouter. navigateTo( VerifyCodeView());
                      }
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


