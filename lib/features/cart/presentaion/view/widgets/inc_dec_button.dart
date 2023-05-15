
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncDecButton extends StatelessWidget {
  const IncDecButton({
    super.key,
    this.onTap,
    required this.widget,
  });

  final void Function()? onTap;

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 30.w,
          width: 30.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: BorderRadius.circular(5),
          ),
          child: widget),
    );
  }
}