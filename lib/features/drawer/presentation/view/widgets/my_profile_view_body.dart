import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';

class MyProfileViewBody extends StatelessWidget {
  MyProfileViewBody({
    super.key,
  });

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
        key: formKey,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 20.h,),
              Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 100.w,
                      width: 100.w,
                      decoration:   const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBackground,
                        image: DecorationImage(image: AssetImage(AssetsData.avtar),),),
                    ),
                     CircleAvatar(
                        radius: 15.r,
                        backgroundColor: kPrimaryColor,
                        child:const Icon(Icons.mode_edit_outline_outlined,color: Colors.white,size: 20,)),
                  ],
                ),
              ),
               SizedBox(height: 8.h,),
               Text('Full Name',style: TextStyle(color: Colors.black,fontSize: 14.sp),),
              SizedBox(height: 8.h,),
              CustomTextFormField(
                isBorder: false,
                isPassword: true,
                isPrefix:false ,
                controller: nameController,
                hintText: 'Mahmoud',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.name,
                validator: (data) {
                  if (data!.isEmpty) {
                    return ' Your Name Is Required';
                  }
                },
              ),
              SizedBox(height: 8.h,),
               Text('Email Address',style: TextStyle(color: Colors.black,fontSize: 14.sp),),
              SizedBox(height: 8.h,),
              CustomTextFormField(
                isPassword: true,
                isPrefix:false ,
                isBorder: false,
                controller: emailController,
                hintText: 'mahmoud@gmail.com',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.emailAddress,
                validator: (data) {
                  if (data!.isEmpty) {
                    return ' Your Email Is Required';
                  }
                },
              ),
             SizedBox(height: 8.h,),
               Text('Phone Number',style: TextStyle(color: Colors.black,fontSize: 14.sp),),
             SizedBox(height: 8.h,),
              CustomTextFormField(
                isPassword: true,
                isPrefix:false ,
                isBorder: false,
                controller: phoneController,
                hintText: '01000000000',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.number,
                validator: (data) {
                  if (data!.isEmpty) {
                    return ' Your Phone Is Required';
                  }
                },
              ),
              SizedBox(height: 8.h,),
                Text('Password',style: TextStyle(color: Colors.black,fontSize: 14.sp),),
              SizedBox(height: 8.h,),
              CustomTextFormField(
                isPassword: true,
                isPrefix:false ,
                isBorder: false,
                controller: passwordController,
                hintText: '*********',
                prefix: Icons.lock_outline_rounded,
                inputType: TextInputType.visiblePassword,
                validator: (data) {
                  if (data!.isEmpty ) {
                    return ' Your Password Is Required';
                  }
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              CustomButton(
                  text: 'Update',
                  textColor: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  backgroundColor: kPrimaryColor.withOpacity(.9),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // navigateTo(context, AppRouter.kLoginView);
                    }
                  }
              ),
               SizedBox(height: 10.h,)
            ],
          ),
        ),
      ),
    );
  }
}