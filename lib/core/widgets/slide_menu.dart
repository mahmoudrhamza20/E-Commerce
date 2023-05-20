import 'package:e_commerce/core/utils/assets.dart';
import 'package:e_commerce/core/utils/cache_helper.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/drawer/presentation/view/about_us_view.dart';
import '../../features/drawer/presentation/view/all_categories_view.dart';
import '../../features/drawer/presentation/view/language_view.dart';
import '../../features/drawer/presentation/view/my_profile_view.dart';
import '../../features/drawer/presentation/view/setting_view.dart';
import '../../features/drawer/presentation/view/widgets/my_order_view.dart';
import 'list_tile_of_drawer.dart';

Widget buildMenu(context) {
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    padding:  EdgeInsets.symmetric(horizontal: 10.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Container(
                height: 80.w,
                width: 80.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBackground,
                  image: DecorationImage(image: AssetImage(AssetsData.avtar),),),
              ),
        ),
            Padding(
              padding:  EdgeInsets.only(top: 10.h,left: 20.w),
              child: Text('Mahmoud',style: TextStyle(color: Colors.black,fontSize: 16.sp),),
            ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 20.w),
               child: const Text('mahmoud@gmail.com',style: TextStyle(color: Colors.black54)),
             ),
         ListTileOfDrawer(
          title: 'My Profile',
          leadingIcon: Icons.person_2_outlined,
           onTap: ()=>MagicRouter. navigateTo(const MyProfileView()),
        ),
         ListTileOfDrawer(
          title: 'Language',
          leadingIcon: Icons.language_outlined,
          onTap: ()=>MagicRouter. navigateTo(const LanguageView()),
        ),
         ListTileOfDrawer(
          title: 'All Categories',
          leadingIcon: Icons.category_outlined,
           onTap: ()=>MagicRouter. navigateTo(const AllCategoriesView()),
        ),
         ListTileOfDrawer(
          title: 'My Order',
          leadingIcon: Icons.directions_bus,
          onTap: ()=>MagicRouter. navigateTo(const MyOrderView()),
        ),
         ListTileOfDrawer(
          title: 'Settings',
          leadingIcon: Icons.settings_outlined,
          onTap: ()=>MagicRouter.navigateTo(const SettingView()),
        ),
         ListTileOfDrawer(
          title: 'About Us',
          leadingIcon: Icons.content_copy,
          onTap: ()=>MagicRouter. navigateTo(const AboutUsView()),
        ),
         SizedBox(height: 8.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.3,
            child:  CustomButton(
              onPressed: (){
                CacheHelper.clear();
                MagicRouter.navigateAndPopAll(const LoginView());
              },
                text: 'Log Out',
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.3,
            child:  CustomButton(
                text: 'Delete Account',
                textColor: Colors.white,
                backgroundColor: kPrimaryColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ],
    ),
  );
}