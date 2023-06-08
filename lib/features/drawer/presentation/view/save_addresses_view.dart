import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/drawer/presentation/view/add_address_view.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/address_view_body.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/magic_router.dart';
import '../../../../translations/locale_keys.g.dart';

class SavedAddressesView extends StatelessWidget {
  const SavedAddressesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          onPressed: () => MagicRouter.navigateTo(AddAddressView()),
          mini: true,
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
        appBar: drawerListTileAppBar(
          title: LocaleKeys.savedAddress.tr(),
        ),
        body: const AddressViewBody());
  }
}
