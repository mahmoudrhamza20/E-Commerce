import 'package:e_commerce/features/home/presentation/views/home_view.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cart/presentaion/view/cart_view.dart';
import '../../../category_brand/presentaion/view/category_brand_view.dart';
import '../../../favorite/presentaion/view/favorite_view.dart';
import '../../../search/presentaion/view/search_view.dart';
part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarInitial());


  static BottomBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomsScreens =  [
    const HomeView(),
    const FavoriteView(),
    const SearchView(),
    const CategoryBrandView(),
    const CartView(),
  ];

  void changeBottom(index) {
    emit(BottomBarInitial());
    currentIndex = index;
    emit(ChangeBottomNavBar());
  }
}
