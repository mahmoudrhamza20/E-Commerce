import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/card_details_view_body.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../translations/locale_keys.g.dart';
import 'add_card_view.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(
        title: LocaleKeys.cardDetails.tr(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => MagicRouter.navigateTo(const AddCardView()),
        backgroundColor: kPrimaryColor,
        mini: true,
        elevation: 0,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: const CardDetailsViewBody(),
    );
  }
}
