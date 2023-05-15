import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errMessage}) : super(key: key);
final String errMessage ;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage,style: Styles.textStyle14,);
  }
}
