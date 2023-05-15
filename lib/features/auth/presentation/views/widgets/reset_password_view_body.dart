import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form.dart';
import '../login_view.dart';


class ResetPasswordViewBody extends StatelessWidget {
   ResetPasswordViewBody({Key? key}) : super(key: key);
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
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
                 SizedBox(height: 8.h,),
                 Text('Password',style: TextStyle(color: Colors.black,fontSize: 16.sp),),
                 SizedBox(height: 8.h,),
                CustomTextFormField(
                  isBorder: false,
                  isPassword: true,
                  isPrefix:false ,
                  controller: oldPasswordController,
                  hintText: '*********',
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return ' Your Old Password Is Required';
                    }
                    return null;
                  },
                ),
               SizedBox(height: 22.h,),
                 Text('New Password',style: TextStyle(color: Colors.black,fontSize: 16.sp),),
                 SizedBox(height: 8.h,),
                CustomTextFormField(
                  isPassword: true,
                  isPrefix:false ,
                  isBorder: false,
                  controller: newPasswordController,
                  hintText: '*********',
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return ' Your New Password Is Required';
                    }
                    return null;
                  },
                ),
                 SizedBox(height: 22.h,),
                 Text('Confirm Password',style: TextStyle(color: Colors.black,fontSize: 16.sp),),
                 SizedBox(height: 8.h,),
                CustomTextFormField(
                  isPassword: true,
                  isPrefix:false ,
                  isBorder: false,
                  controller: rePasswordController,
                  hintText: '*********',
                  prefix: Icons.lock_outline_rounded,
                  inputType: TextInputType.visiblePassword,
                  validator: (data) {
                    if (data!.isEmpty ) {
                      return ' Your Password Is Required';
                    }
                   else if (newPasswordController.text != rePasswordController.text){
                      return ' Your Password should be same';
                    }
                    return null;
                  },
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*.2,),
                CustomButton(
                    text: 'Submit',
                    textColor: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    backgroundColor: kPrimaryColor.withOpacity(.9),
                    onPressed: () {
                      if (formKey.currentState!.validate() && newPasswordController.text == rePasswordController.text) {
                      MagicRouter. navigateTo(const LoginView());
                      }
                    }
                ),
                SizedBox(height: 10.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


