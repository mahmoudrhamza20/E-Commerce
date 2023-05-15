import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants.dart';
import 'custom_stepper.dart';

class TrackMyOrderViewBody extends StatelessWidget {
  const TrackMyOrderViewBody({Key? key, required this.activeIndex, required this.stepperData1}) : super(key: key);
  final int activeIndex ;
  final   List<StepperData> stepperData1 ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 20.h,),
             Text('wed, 12 Sep',style: TextStyle(fontSize: 16.sp,color: Colors.grey),),
            const SizedBox(height: 6,),
            Row(
              children:  [
                Text('Order Id: 5t36-9iu2',style: TextStyle(fontSize: 16.sp,color: Colors.grey),),
                Spacer(),
                Text('Amt: \$2,890.00',style: TextStyle(fontSize: 14.sp,color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
            const Divider(color: Colors.black54,),
            const SizedBox(height: 10,),
             Text('ETA: 15 Min',style: TextStyle(fontSize: 16.sp,color: Colors.black,fontWeight: FontWeight.bold),),
            CustomStepper(activeIndex: activeIndex,stepperData1: stepperData1),
            SizedBox(
              height: MediaQuery.of(context).size.height*.17,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Icon(Icons.house_outlined,color: kPrimaryColor,size: 50,),
                       SizedBox(width: 15.w,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*.58,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                             Text('Delivery Address',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
                            const SizedBox(height: 5,),
                            Flexible(
                              child: Text('Home, Work & Other Address House No: 1234, 2nd Floor Sector 18, Silicon vally USA.',
                                style: TextStyle(fontSize: 13,color: Colors.grey.shade600,),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}