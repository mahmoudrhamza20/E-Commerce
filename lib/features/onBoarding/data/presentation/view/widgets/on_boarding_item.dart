import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/on_boarding_model.dart';


class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({Key? key, required this.boarding}) : super(key: key);
  final OnBoardingModel boarding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Image(
                image: AssetImage(
                  boarding.image,
                )),),
         SizedBox(
          height: 40.h,
        ),
        Text(
          boarding.title,
          style:  TextStyle(fontSize: 24.sp,fontWeight: FontWeight.bold,),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,

        ),
         SizedBox(
          height: 20.h,
        ),
        Text(
          boarding.desc,
          style:  TextStyle(fontSize: 18.sp,color: Colors.blueGrey),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,

        )
      ],
    );
  }
}