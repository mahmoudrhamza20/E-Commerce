import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.image,
    required this.imgColor,
    this.onTap,
  });
  final String image;
  final Color imgColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 50.w,
              height: 50.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                shape: BoxShape.circle,
              ),
            ),
            Image.asset(
              image,
              color: imgColor,
              width: 35.w,
              height: 35.w,
            ),
          ],
        ),
      ),
    );
  }
}
