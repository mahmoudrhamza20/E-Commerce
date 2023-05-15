import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';

class CustomStepper extends StatelessWidget {
  const  CustomStepper({Key? key, required this.activeIndex, required this.stepperData1}) : super(key: key);
  final int activeIndex ;
  final   List<StepperData> stepperData1 ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        AnotherStepper(
          stepperList: stepperData1,
          stepperDirection: Axis.vertical,
          iconWidth: 40.w,
          iconHeight: 40.w,
          activeBarColor:kPrimaryColor,
          inActiveBarColor: kPrimaryColor.withOpacity(.4),
          verticalGap: 20,
          activeIndex: activeIndex,
          barThickness: 2,
        ),
      ],
    );
  }
}
StepperData customStepperData({required title,required subtitle,required color}){
  return StepperData(
      title: StepperText(title, textStyle: const TextStyle(),),
      subtitle: StepperText(subtitle),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration:  BoxDecoration(
            color: color,
            shape: BoxShape.circle),
        child: const Icon(Icons.check,color: Colors.white,),
      ));
}