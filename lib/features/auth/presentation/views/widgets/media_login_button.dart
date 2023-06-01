import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_text_style.dart';

class MediaLoginButton extends StatelessWidget {
  const MediaLoginButton({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xffE5E5E5))),
      child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Image.asset(
                image,
                height: 20.h,
                width: 15.w,
              ),
              const SizedBox(
                width: 80,
              ),
              Text(
                text,
                style: AppTextStyle.textStyle14
                    .copyWith(color: const Color(0xff9098B1)),
              ),
            ],
          )),
    );
  }
}
