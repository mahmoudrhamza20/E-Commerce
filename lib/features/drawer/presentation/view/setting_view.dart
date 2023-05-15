import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/drawer/presentation/view/card_details_view.dart';
import 'package:e_commerce/features/drawer/presentation/view/save_addresses_view.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/magic_router.dart';

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Settings'),
      body: const SettingViewBody(),
    );
  }
}
class SettingViewBody extends StatelessWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
             SizedBox(height: 20.h,),
            // const SettingsCard(title: 'Dark Theme'),
            // const SizedBox(height: 6,),
             Text('Setting',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold)),
            const SizedBox(height: 6,),
            const SettingsCard(title: 'Order Notification'),
            const SettingsCard(title: 'Discount Notification'),
            const SettingsCard(title: 'Order Notification'),
            const SizedBox(height: 6,),
             Text('Account',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold)),
            const SizedBox(height: 6,),
            SettingAccountCard(title: 'address',onTap: ()=> MagicRouter. navigateTo(const SavedAddressesView()),),
             SettingAccountCard(title: 'Payment Method',onTap: ()=> MagicRouter. navigateTo(const CardDetailsView()),),
            const SettingAccountCard(title: 'Privacy policy'),
            const SettingAccountCard(title: ' Terms & conditions'),
          ],
        ),
      ),
    );
  }
}

class SettingsCard extends StatefulWidget {
  const SettingsCard({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SettingsCard> createState() => _SettingsCardState();
}
class _SettingsCardState extends State<SettingsCard> {
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      child:  ListTile(
        leading: Text(widget.title,style:  TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.grey),),
        trailing: Switch(
            activeColor: kPrimaryColor,
            inactiveTrackColor: Colors.white,
            inactiveThumbColor: Colors.grey,
            value: switchVal,
            onChanged: (val){
              setState(() {
                switchVal = val;
              });
            }
        ),

      ),
    );
  }
}

class SettingAccountCard extends StatelessWidget {
  const SettingAccountCard({Key? key, required this.title, this.onTap}) : super(key: key);
final String title;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        child:  ListTile(
          leading: Text(title,style:  TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.grey),),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,)
        ),
      ),
    );
  }
}

