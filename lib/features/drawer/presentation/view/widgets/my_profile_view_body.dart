import 'dart:developer';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../../../../../translations/locale_keys.g.dart';

class MyProfileViewBody extends StatefulWidget {
  const MyProfileViewBody({
    super.key,
  });

  @override
  State<MyProfileViewBody> createState() => _MyProfileViewBodyState();
}

class _MyProfileViewBodyState extends State<MyProfileViewBody> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(
        () => this.image = imageTemp,
      );
    } on PlatformException catch (e) {
      log('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: InkWell(
                  onTap: () => {
                    pickImage(),
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 100.w,
                        width: 100.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kBackground,
                          image: image == null
                              ? const DecorationImage(
                                  image: AssetImage(AppAssets.avtar),
                                )
                              : DecorationImage(
                                  image: FileImage(
                                    image!,
                                  ),
                                  fit: BoxFit.cover),
                        ),
                      ),
                      CircleAvatar(
                          radius: 15.r,
                          backgroundColor: kPrimaryColor,
                          child: const Icon(
                            Icons.mode_edit_outline_outlined,
                            color: Colors.white,
                            size: 20,
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                LocaleKeys.fullName.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                isBorder: false,
                isPassword: true,
                isPrefix: false,
                controller: nameController,
                hintText: 'Mahmoud',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.name,
                validator: (data) {
                  if (data!.isEmpty) {
                    return LocaleKeys.yurNameIsRequired.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                LocaleKeys.emailAddress.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                isPassword: true,
                isPrefix: false,
                isBorder: false,
                controller: emailController,
                hintText: 'mahmoud@gmail.com',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.emailAddress,
                validator: (data) {
                  if (data!.isEmpty) {
                    return LocaleKeys.yourEmailIsRequired.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                LocaleKeys.phoneNumber.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                isPassword: true,
                isPrefix: false,
                isBorder: false,
                controller: phoneController,
                hintText: '01000000000',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.number,
                validator: (data) {
                  if (data!.isEmpty) {
                    return LocaleKeys.yourPhoneIRequired.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                LocaleKeys.password.tr(),
                style: TextStyle(color: Colors.black, fontSize: 14.sp),
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomTextFormField(
                isPassword: true,
                isPrefix: false,
                isBorder: false,
                controller: passwordController,
                hintText: '*********',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.visiblePassword,
                validator: (data) {
                  if (data!.isEmpty) {
                    return LocaleKeys.yourPasswordIsRequired.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              CustomButton(
                  text: LocaleKeys.update.tr(),
                  textColor: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  backgroundColor: kPrimaryColor.withOpacity(.9),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // navigateTo(context, AppRouter.kLoginView);
                    }
                  }),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
