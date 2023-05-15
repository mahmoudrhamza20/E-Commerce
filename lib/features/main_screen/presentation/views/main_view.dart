import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../views_models/bottom_bar_cubit.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
  builder: (context, state) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex:BottomBarCubit.get(context).currentIndex,
        style: TabStyle.fixedCircle,
        cornerRadius: 30,
        height: 60.h,
        color: Colors.grey,
        backgroundColor: Colors.white,
        activeColor: kPrimaryColor,
        elevation: 0,
        items: const [
          TabItem(
            icon: Icons.home,
          ),
          TabItem(
            icon: Icons.favorite_outline,
          ),
          TabItem(
            icon: Icons.search_outlined,
          ),
          TabItem(
            icon: Icons.shop_two_outlined,
          ),
          TabItem(
            icon: Icons.shopping_cart_outlined,
          ),
        ],
        onTap: (int index) =>BottomBarCubit.get(context).changeBottom(index),
      ),
      body:BottomBarCubit.get(context).bottomsScreens.elementAt(BottomBarCubit.get(context).currentIndex)
    );
  },
);
  }


}
