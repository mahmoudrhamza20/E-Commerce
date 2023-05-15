import 'package:e_commerce/features/search/presentaion/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildHomeAppBar(context: context,title: 'Search',isActions: false,),
      body:  SearchViewBody(),
    );
  }
}
