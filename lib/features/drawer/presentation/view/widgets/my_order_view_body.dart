import 'package:e_commerce/features/drawer/presentation/view/track_my_order_view_of_Delivered.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/track_my_order_view_of_canceled.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../track_my_order_view_of_proceeing.dart';
import 'my_order_view.dart';

class MyOrderViewBody extends StatelessWidget {
  const MyOrderViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    TabBarView(
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        MyOrderTabSection(title: LocaleKeys.delivered.tr() ,color: Colors.green,onPressed:()=> MagicRouter. navigateTo(const TrackMyOrderViewOfDelivered()),),
          MyOrderTabSection(title:  LocaleKeys.processing.tr(),color: kPrimaryColor,onPressed:()=> MagicRouter. navigateTo(const TrackMyOrderViewOfProcessing())),
          MyOrderTabSection(title:  LocaleKeys.canceled.tr(),color: Colors.red,onPressed:()=>MagicRouter. navigateTo(const TrackMyOrderViewOfCanceled())),
      ],
    );
  }
}
