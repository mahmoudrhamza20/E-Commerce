import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/custom_stepper.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/track_my_order_view_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../translations/locale_keys.g.dart';


class TrackMyOrderViewOfDelivered extends StatelessWidget {
  const TrackMyOrderViewOfDelivered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title:  LocaleKeys.trackMyOrder.tr(),),
      body:  TrackMyOrderViewBody(activeIndex:2,stepperData1: [
        customStepperData(title:"Order Placed" ,subtitle: "We have received your order, 10:04",color:kPrimaryColor ),
        customStepperData(title:"Payment Confirmation" ,subtitle: "Awaiting confirmation..., 10:06",color:kPrimaryColor ),
        customStepperData(title: "Order Processed" ,subtitle: "We have preparing your order., 10:08",color:kPrimaryColor ),
        customStepperData(title:"Ready to Pickup" ,subtitle:'Order from SpingoShop, 11:00',color:kPrimaryColor.withOpacity(.6) ),
        ]),
    );
  }

}


