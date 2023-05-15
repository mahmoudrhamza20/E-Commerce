import 'package:e_commerce/features/category_brand/presentaion/view/widgets/category_brand_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';

class CategoryBrandView extends StatelessWidget {
  const CategoryBrandView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildHomeAppBar(
          context: context, title: 'Category Brand',),
        body: const CategoryBrandViewBody()
    );
  }
}


