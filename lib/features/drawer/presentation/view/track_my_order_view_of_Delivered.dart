import 'widgets/custom_stepper.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/track_my_order_view_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';
import '../../../../translations/locale_keys.g.dart';

class TrackMyOrderViewOfDelivered extends StatelessWidget {
  const TrackMyOrderViewOfDelivered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(
        title: LocaleKeys.trackMyOrder.tr(),
      ),
      body: TrackMyOrderViewBody(activeIndex: 2, stepperData1: [
        customStepperData(
            title: LocaleKeys.orderPlaced.tr(),
            subtitle: "${LocaleKeys.wehavereceivedyourorder.tr()}, 10:04",
            color: kPrimaryColor),
        customStepperData(
            title: LocaleKeys.paymentConfirmation.tr(),
            subtitle: "${LocaleKeys.awaitingconfirmation.tr()}, 10:06",
            color: kPrimaryColor),
        customStepperData(
            title: LocaleKeys.orderProcessed.tr(),
            subtitle: LocaleKeys.wehavepreparingyouorder.tr(),
            color: kPrimaryColor),
        customStepperData(
            title: LocaleKeys.readytoPickup.tr(),
            subtitle: 'Order from SpingoShop, 11:00',
            color: kPrimaryColor.withOpacity(.6)),
      ]),
    );
  }
}
