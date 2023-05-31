import 'package:e_commerce/features/drawer/presentation/view_model/app_bar_drawar_cubit/app_bar_drawer_cubit.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_appbar.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../../../../core/widgets/slide_menu.dart';
import '../../../../translations/locale_keys.g.dart';

class HomeView extends StatelessWidget {
 const  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarDrawerCubit, AppBarDrawerState>(
  builder: (context, state) {
    return SideMenu(
      inverse:Localizations.localeOf(context).languageCode == 'ar' ,
      closeIcon: const Icon(Icons.close, color:  Colors.black),
      key: sideMenuKey,
      background: kBackground,
      menu: buildMenu(context),
      type:  SideMenuType.shrikNRotate,
      onChange: (isOpened) => AppBarDrawerCubit.get(context).changeStatus(),
      child: Scaffold(
          appBar: buildHomeAppBar(context: context,title: LocaleKeys.deliveryTo.tr(),isHome: true),
          body:const HomeViewBody()
      ),
    );
  },
);
  }
}
