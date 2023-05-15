
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class CreditItem extends StatefulWidget {

  const CreditItem({super.key, });

  @override
  State<CreditItem> createState() => _CreditItemState();
}

class _CreditItemState extends State<CreditItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: !isSelected? const Color(0xffE5E5E5):kPrimaryColor)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 25.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const Icon(
                    Icons.credit_card,
                    color: kPrimaryColor,
                  )
                ],
              ),
               SizedBox(
                width: 15.w,
              ),
              const Text('**** **** **** 3947'),
              const Spacer(),
              isSelected
                  ? Container(
                width: 30.w,
                height: 30.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                ),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              )
                  : Container(
                width: 30.w,
                height: 30.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade200,
                    border: Border.all(color: kPrimaryColor)),
              ),
              // const CustomCheckBox(),
            ],
          ),
        ),
      ),
    );
  }
}