import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/cache_helper.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../../main_screen/presentation/views/main_view.dart';
import 'custom_social_button.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool checkVal = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                  LocaleKeys.letsGetStarted.tr(),
                  style: AppTextStyle.textStyle24.copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  LocaleKeys.signupwithsocialoffilltheFormToContinue.tr(),
                  style:
                      AppTextStyle.textStyle12.copyWith(color: Colors.black38),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFormField(
                  isBorder: false,
                  controller: nameController,
                  hintText: LocaleKeys.name.tr(),
                  prefix: Icons.person_2_outlined,
                  inputType: TextInputType.name,
                  // validator: (data) {
                  //   if (data!.isEmpty) {
                  //     return LocaleKeys.required.tr();
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextFormField(
                  isBorder: false,
                  controller: phoneController,
                  hintText: LocaleKeys.phone.tr(),
                  prefix: Icons.phone,
                  inputType: TextInputType.phone,
                  // validator: (data) {
                  //   if (data!.isEmpty) {
                  //     return LocaleKeys.required.tr();
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextFormField(
                  isBorder: false,
                  controller: emailController,
                  hintText: LocaleKeys.emailOrPhone.tr(),
                  prefix: Icons.email_outlined,
                  inputType: TextInputType.emailAddress,
                  // validator: (data) {
                  //   if (data!.isEmpty) {
                  //     return LocaleKeys.required.tr();
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextFormField(
                  //  suffixPressed:() {LoginCubit.get(context).changePasswordVisibility();},
                  //  suffix: LoginCubit.get(context).suffix,
                  //  isPassword: LoginCubit.get(context).isPasswordShown,
                  isBorder: false,
                  controller: passwordController,
                  hintText: LocaleKeys.password.tr(),
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  // validator: (data) {
                  //   if (data!.isEmpty) {
                  //     return LocaleKeys.required.tr();
                  //   }
                  //   return null;
                  // },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: kPrimaryColor,
                      activeColor: Colors.white,
                      value: checkVal,
                      onChanged: (value) {
                        setState(() {
                          checkVal = value!;
                        });
                      },
                      shape: const CircleBorder(),
                    ),
                    Flexible(
                        child: Text(
                      LocaleKeys.bysigningupyouagreetotheermsofservice.tr(),
                      style: const TextStyle(height: 1.3),
                    )),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .014),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SocialButton(
                        image: AppAssets.twitter, imgColor: Colors.blue),
                    SocialButton(
                      image: AppAssets.facebook,
                      imgColor: Colors.blue.shade800,
                    ),
                    const SocialButton(
                        image: AppAssets.gmail, imgColor: Colors.red),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomButton(
                    text: LocaleKeys.signUp.tr(),
                    textColor: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    backgroundColor: kPrimaryColor.withOpacity(.9),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        var connectivityResult =
                            await (Connectivity().checkConnectivity());
                        if (connectivityResult != ConnectivityResult.mobile &&
                            connectivityResult != ConnectivityResult.wifi) {
                          showSnackBar(
                            LocaleKeys.noInternetConnectivity.tr(),
                          );
                        }
                        if (nameController.text.length <= 2) {
                          showSnackBar(
                            LocaleKeys.pleaseenteravalidname.tr(),
                          );
                          return;
                        }
                        if (!emailController.text.contains('@')) {
                          showSnackBar(
                            LocaleKeys.pleaseProvideAValidEmailAddress.tr(),
                          );
                          return;
                        }
                        if (passwordController.text.length < 8) {
                          showSnackBar(
                            LocaleKeys
                                .pleaseProvideAValidPasswordShouldGreaterThan8Character
                                .tr(),
                          );
                          return;
                        }
                        if (phoneController.text.length < 10) {
                          showSnackBar(
                            LocaleKeys.pleaseProvideAValidPhoneNumber.tr(),
                          );
                          return;
                        }

                        CacheHelper.saveData(key: 'login', value: true);
                        MagicRouter.navigateAndPopAll(const MainScreen());
                      }
                    }),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.haveAnAccount.tr(),
                      style: AppTextStyle.textStyle12
                          .copyWith(color: const Color(0xff9098B1)),
                    ),
                    InkWell(
                        onTap: () {
                          MagicRouter.pop();
                        },
                        child: Text(
                          LocaleKeys.login.tr(),
                          style: AppTextStyle.textStyle14
                              .copyWith(color: kPrimaryColor),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
