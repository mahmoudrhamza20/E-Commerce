
import 'package:flutter/material.dart';
import '../../../../drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'home_category_item_details_view_body.dart';

class HomeCategoryItemDetailsView extends StatelessWidget {
  const HomeCategoryItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Fashion Man'),
      body: const HomeCategoryItemDetailsViewBody(),
    );
  }
}
