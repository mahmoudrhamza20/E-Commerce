import 'package:e_commerce/features/favorite/presentaion/view/widgets/favorite_view_body.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/slide_menu.dart';
import '../../../drawer/presentation/view_model/app_bar_drawar_cubit/app_bar_drawer_cubit.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SideMenu(
        inverse:Localizations.localeOf(context).languageCode == 'ar' ,
      closeIcon: const Icon(Icons.close, color:  Colors.black),
      key: sideMenuKey,
      background: kBackground,
      menu: buildMenu(context),
      type:  SideMenuType.shrikNRotate,
      onChange: (isOpened) => AppBarDrawerCubit.get(context).changeStatus(),
      child: Scaffold(
        appBar: buildHomeAppBar(context: context,title: 'Favorite',),
        body: const FavoriteViewBody(),
      ),
    );
  }
}
