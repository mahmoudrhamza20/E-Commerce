import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.isClickable = true,
      required this.controller,
      required this.hintText,
      required this.prefix,
      this.validator,
      required this.inputType,
      this.suffix,
      this.suffixPressed,
      this.onTap,
      this.onChange,
      this.isPassword = false,
      this.onSubmitted,  this.isBorder= true,  this.isPrefix = true})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData prefix;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  final bool isPassword;
  final bool isBorder;
  final bool isPrefix;

  final IconData? suffix;
  final void Function()? suffixPressed;
  final void Function()? onTap;
  final void Function(String)? onChange;
  final void Function(String)? onSubmitted;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onFieldSubmitted: onSubmitted,
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword,
      cursorColor: kPrimaryColor,
      
      decoration: InputDecoration(
        suffixIconColor: kPrimaryColor,
        fillColor: Colors.white,
        filled: true,
        errorBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(color: Colors.grey.shade300)) ,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(color: Colors.grey.shade300)),
        border: isBorder?   OutlineInputBorder(borderRadius:BorderRadius.circular(6),borderSide: BorderSide(color: Colors.grey.shade300) ) :InputBorder.none,
        hintText: hintText,
        prefixIcon: isPrefix? Icon(prefix):null,
        prefixIconColor: kPrimaryColor,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ))
            : null,
      ),
      validator: validator,
      onTap: onTap,
      onChanged: onChange,
      enabled: isClickable,
    );
  }
}

Widget customTextField(
    {
       Icon? endIcon,
       Widget? prefix,
       String? hintText,
      Color? color,
      required bool isPassword,
      required TextInputType type,
      required TextEditingController controller,
      VoidCallback? onPressed}) {
  return TextField(
      controller: controller,
      style: TextStyle(color: Colors.black.withOpacity(.8)),
      obscureText: isPassword,
      keyboardType: type,
      
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        filled: true,
        fillColor:  color??const Color(0xfff5f5f5),
        prefixIconColor: kPrimaryColor,
        prefixIcon: prefix,
        suffixIcon: endIcon != null
            ? IconButton(
          color: const Color(0xff97ADB6),
          splashRadius: 1,
          onPressed: onPressed,
          icon: endIcon,
        )
            : null,
        border:const UnderlineInputBorder(borderSide:  BorderSide(
          color: Colors.grey,
            width:1,
            style: BorderStyle.solid,
          ),),
        focusedBorder: const UnderlineInputBorder(borderSide:  BorderSide(
        color: Colors.grey,

            width:1,
            style: BorderStyle.solid
          ),),
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14.sp, color: const Color(0xffB5B5B5)),
      ));
}