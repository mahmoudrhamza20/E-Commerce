import 'package:e_commerce/features/drawer/presentation/view/widgets/drawer_list_tile_app_bar.dart';
import 'package:e_commerce/features/drawer/presentation/view/widgets/language_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/cache_helper.dart';


class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: drawerListTileAppBar(title: 'Language'),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children:   [
            SizedBox(height: 20.h,),
            LanguageCard(title:'English',image: AssetsData.us_lang,onTap: (){ 
               context.setLocale(const Locale('en'));
                 CacheHelper.saveData(key: 'lang', value: 'en');
            }),
            LanguageCard(title:'Arabic',image: AssetsData.ar_lang,onTap: (){
              context.setLocale(const Locale('ar'));
                   CacheHelper.saveData(key: 'lang', value: 'ar');
            })
          ],
        ),
      ),
    );
  }
}


//  if (newValue == '🇸🇦  عربي') {
//                   context.setLocale(const Locale('ar'));
//                   CacheHelper.saveData(key: 'lang', value: 'ar');
//                 } else {
//                   context.setLocale(const Locale('en'));
//                   CacheHelper.saveData(key: 'lang', value: 'en');
//                 }