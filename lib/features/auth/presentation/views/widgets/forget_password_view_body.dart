import 'package:country_picker/country_picker.dart';
import 'package:e_commerce/features/auth/presentation/views/verify_code_view.dart';
import 'package:e_commerce/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../../../../../global_variables.dart';

class ForgetPasswordViewBody extends StatefulWidget {
 const ForgetPasswordViewBody({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(
                  height: 50.h,
                ),
                Text(
                 LocaleKeys.forgetYourPassword.tr(),
                  style: Styles.textStyle24.copyWith(
                      color: const Color(0xff223263)),
                ),
                 SizedBox(
                  height: 8.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.ifYouneedhelpresettingyourpassword.tr(),
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),
                    ),
                    Text(
                     LocaleKeys.wecanhelpyousendingyoulinktoresetit.tr(),
                      style: Styles.textStyle12.copyWith(
                          color: const Color(0xff9098B1)),
                    ),
                  ],
                ),
                 SizedBox(
                  height:80.h
                ),
                customTextField(
                            type: TextInputType.phone,
                            onPressed: () {},
                            endIcon: const Icon(Icons.phone),
                            controller: phoneController,
                            isPassword: false,
                            prefix: InkWell(
                              onTap: () {
                                showCountryPicker(
                                    countryListTheme: CountryListThemeData(
                                        bottomSheetHeight: 500.h),
                                    context: context,
                                    onSelect: (value) {
                                      setState(() {
                                        selectedCountry = value;
                                      });
                                    });
                              },
                              child: Padding(
                                padding: EdgeInsets.all(6.0.w),
                                child: Text(
                                  '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}',
                                  style: TextStyle(fontSize: 18.sp),
                                ),
                              ),
                            ),
                            hintText: ''),
                // IntlPhoneField(
                //   decoration:  InputDecoration(
                //     hintText: LocaleKeys.yourPhoneNumber.tr(),
                //   ),
                //   initialCountryCode: 'IN',
                  
                //   onChanged: (phone) {
                //     log(phone.completeNumber);
                //   },
                // ),
                 SizedBox(height: 30.h,),
                SizedBox(height:  MediaQuery.of(context).size.height*0.25,),
                CustomButton(
                  text: LocaleKeys.next.tr(),
                    textColor: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    backgroundColor: kPrimaryColor.withOpacity(.9),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                       MagicRouter. navigateTo(const VerifyCodeView());
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


