import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/features/auth/presentation/views/forget_password_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/cache_helper.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_icon.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../../main_screen/presentation/views/main_view.dart';
import '../../views_models/login_cubit/login_cubit.dart';
import '../register_view.dart';
import 'custom_social_button.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool checkVal = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (BuildContext context, state) {},
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  customIconBack(
                    icon: Icons.language,
                    onTap: () {
                      if (LoginCubit.get(context).localeIsEn == true) {
                        context.setLocale(const Locale('en'));
                      } else {
                        context.setLocale(const Locale('ar'));
                      }
                      LoginCubit.get(context).localeIsEn =
                          !LoginCubit.get(context).localeIsEn;
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    LocaleKeys.letsGetStarted.tr(),
                    style:
                        AppTextStyle.textStyle24.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    LocaleKeys.loginwithsocialoffilltheFormToContinue.tr(),
                    style: AppTextStyle.textStyle12
                        .copyWith(color: Colors.black38),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    isBorder: false,
                    controller: emailController,
                    hintText: LocaleKeys.emailOrPhone.tr(),
                    prefix: Icons.email_outlined,
                    inputType: TextInputType.emailAddress,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return LocaleKeys.required.tr();
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFormField(
                    suffixPressed: () => setState(() {
                      LoginCubit.get(context).isPasswordShown =
                          !LoginCubit.get(context).isPasswordShown;
                    }),
                    suffix: LoginCubit.get(context).isPasswordShown == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    isPassword: LoginCubit.get(context).isPasswordShown == true
                        ? true
                        : false,
                    isBorder: false,
                    controller: passwordController,
                    hintText: LocaleKeys.password.tr(),
                    prefix: Icons.lock_outline_rounded,
                    inputType: TextInputType.visiblePassword,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return LocaleKeys.required.tr();
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                      onTap: () {
                        MagicRouter.navigateTo(const ForgetPasswordView());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            LocaleKeys.resetPassword.tr(),
                            style: AppTextStyle.textStyle14
                                .copyWith(color: kPrimaryColor),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 10.h,
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
                  SizedBox(height: MediaQuery.of(context).size.height * .17),
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
                      text: LocaleKeys.login.tr(),
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

                          if (passwordController.text.contains('@') ||
                              emailController.text.length < 10) {
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
                          CacheHelper.saveData(key: 'login', value: true);
                          MagicRouter.navigateTo(const MainScreen());
                        }
                      }),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.dontHaveAnAccount.tr(),
                        style: AppTextStyle.textStyle12
                            .copyWith(color: const Color(0xff9098B1)),
                      ),
                      InkWell(
                          onTap: () {
                            MagicRouter.navigateTo(const RegisterView());
                          },
                          child: Text(
                            LocaleKeys.signUp.tr(),
                            style: AppTextStyle.textStyle14
                                .copyWith(color: kPrimaryColor),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
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
