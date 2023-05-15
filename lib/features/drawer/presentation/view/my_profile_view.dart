import 'package:e_commerce/features/drawer/presentation/view/widgets/my_profile_view_body.dart';
import 'package:flutter/material.dart';
import 'widgets/drawer_list_tile_app_bar.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'My Profile'),
      body:  MyProfileViewBody(),
    );
  }
}


