import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

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
