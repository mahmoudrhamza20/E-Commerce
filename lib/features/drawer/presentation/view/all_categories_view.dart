import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../translations/locale_keys.g.dart';
import 'widgets/menu_item.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: LocaleKeys.menu.tr(),),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1 / 1.35,
          crossAxisSpacing: 1,
          mainAxisSpacing:1,
        ),
        itemBuilder: (context, index) => const MenuItem(),
      ),
    );
  }
}


