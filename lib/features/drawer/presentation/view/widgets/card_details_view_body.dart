import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/credit_item.dart';

class CardDetailsViewBody extends StatefulWidget {
  const CardDetailsViewBody({Key? key}) : super(key: key);

  @override
  State<CardDetailsViewBody> createState() => _CardDetailsViewBodyState();
}

class _CardDetailsViewBodyState extends State<CardDetailsViewBody> {
int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:  [
            SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
                itemBuilder: (context, index) =>    Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child:InkWell(
                    onTap: (){
                   currentIndex = index;
                     setState(() {});
                    },
                    child:  CreditItem( isSelected: currentIndex == index)
                    ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
