import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/menu_ietm_details_view_body.dart';
import 'package:flutter/material.dart';


class MenuItemDetailsView extends StatelessWidget {
  const MenuItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Camera'),
      body: const MenuItemDetailsViewBody(),
    );
  }
}





