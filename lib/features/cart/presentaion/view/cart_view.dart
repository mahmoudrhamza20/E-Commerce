import 'package:e_commerce/features/cart/presentaion/view/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildHomeAppBar(context: context,title: 'Cart'),
      body: const CartViewBody() ,
    );
  }
}
