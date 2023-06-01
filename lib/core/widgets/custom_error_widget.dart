import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errMessage})
      : super(key: key);
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: AppTextStyle.textStyle14,
    );
  }
}
