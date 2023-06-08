import 'package:e_commerce/features/auth/presentation/views_models/reset_pass_cubit/reset_pass_cubit.dart';
import 'package:e_commerce/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../login_view.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({Key? key}) : super(key: key);

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  @override
  Widget build(BuildContext context) {
    final cubit = ResetPassCubit.of(context);
    return BlocListener<ResetPassCubit, ResetPassState>(
      listener: (context, state) => {},
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: cubit.formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    LocaleKeys.password.tr(),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFormField(
                    isBorder: false,
                    isPassword: cubit.showPassword,
                    suffixPressed: () {
                      setState(() {
                        cubit.showPassword = !cubit.showPassword;
                      });
                    },
                    suffix: cubit.showPassword == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    isPrefix: false,
                    controller: cubit.oldPasswordController,
                    hintText: '*********',
                    prefix: Icons.lock_outline_rounded,
                    inputType: TextInputType.visiblePassword,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return LocaleKeys.yourOldPasswordIsRequired.tr();
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    LocaleKeys.newPassword.tr(),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFormField(
                    isPrefix: false,
                    isBorder: false,
                    isPassword: cubit.showNewPassword,
                    suffixPressed: () {
                      setState(() {
                        cubit.showNewPassword = !cubit.showNewPassword;
                      });
                    },
                    suffix: cubit.showNewPassword == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    controller: cubit.newPasswordController,
                    hintText: '*********',
                    prefix: Icons.lock_outline_rounded,
                    inputType: TextInputType.visiblePassword,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return LocaleKeys.yourNewPasswordIsRequired.tr();
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    LocaleKeys.confirmPassword.tr(),
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextFormField(
                    isPrefix: false,
                    isBorder: false,
                    isPassword: cubit.showConPassword,
                    suffixPressed: () {
                      setState(() {
                        cubit.showConPassword = !cubit.showConPassword;
                      });
                    },
                    suffix: cubit.showConPassword == true
                        ? Icons.visibility_off
                        : Icons.visibility,
                    controller: cubit.confirmPasswordController,
                    hintText: '*********',
                    prefix: Icons.lock_outline_rounded,
                    inputType: TextInputType.visiblePassword,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return LocaleKeys.yourPasswordIsRequired.tr();
                      } else if (cubit.newPasswordController.text !=
                          cubit.confirmPasswordController.text) {
                        return LocaleKeys.yourPasswordshouldbesame.tr();
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  CustomButton(
                      text: LocaleKeys.submit.tr(),
                      textColor: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      backgroundColor: kPrimaryColor.withOpacity(.9),
                      onPressed: () {
                        if (cubit.formKey.currentState!.validate() &&
                            cubit.newPasswordController.text ==
                                cubit.confirmPasswordController.text) {
                          MagicRouter.navigateTo(const LoginView());
                        }
                      }),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
