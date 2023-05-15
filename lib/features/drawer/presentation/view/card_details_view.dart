import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../core/widgets/credit_item.dart';
import 'add_card_view.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Card Details'),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>MagicRouter. navigateTo(const AddCardView()),
        backgroundColor: kPrimaryColor,
        mini: true,
        elevation: 0,
         child: const Icon(Icons.add,color: Colors.white,size: 30,),
      ),
      body: const CardDetailsViewBody(),
    );
  }
}

class CardDetailsViewBody extends StatelessWidget {
  const CardDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children:  [
            SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
                itemBuilder: (context, index) =>    Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child:const CreditItem(),
                ),
            ),
          ),

        ],
      ),
    );
  }
}


