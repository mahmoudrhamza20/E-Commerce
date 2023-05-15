import 'package:e_commerce/features/favorite/presentaion/view/widgets/favorite_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_appbar.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildHomeAppBar(context: context,title: 'Favorite',),
      body: const FavoriteViewBody(),
    );
  }
}
