
import 'package:e_commerce/features/drawer/presentation/view/widgets/custom_stepper.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/track_my_order_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class TrackMyOrderViewOfProcessing extends StatelessWidget {
  const TrackMyOrderViewOfProcessing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Track My Order'),
      body:  TrackMyOrderViewBody(activeIndex:1,stepperData1: [
        customStepperData(title:"Order Placed" ,subtitle: "We have received your order, 10:04",color:kPrimaryColor ),
        customStepperData(title:"Payment Confirmation" ,subtitle: "Awaiting confirmation..., 10:06",color:kPrimaryColor ),
        customStepperData(title: "Order Processed" ,subtitle: "We have preparing your order., 10:08",color:kPrimaryColor.withOpacity(.6) ),
        customStepperData(title:"Ready to Pickup" ,subtitle:'Order from SpingoShop, 11:00',color:kPrimaryColor.withOpacity(.6) ),
      ]),
    );
  }
}
