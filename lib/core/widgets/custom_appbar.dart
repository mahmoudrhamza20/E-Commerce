import 'package:e_commerce/core/utils/magic_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../features/notifications/presentation/view/notifications_view.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();

toggleMenu() {
  final state = sideMenuKey.currentState!  ;
  if (state.isOpened) {
    state.closeSideMenu();
  } else {
    state.openSideMenu();
  }
}
AppBar buildHomeAppBar({context,String? title,bool isHome = false,bool isActions = true}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading:  InkWell(
      onTap: ()=> toggleMenu(),
        child: const Icon(Icons.menu_outlined,)),
    actions: [
      isActions? Padding(
        padding:  EdgeInsets.only(right: 8.w),
        child: IconButton(
          icon: (const Icon(
            Icons.notifications_none_outlined,
            color: Colors.grey,
          )),
          onPressed: () {
           MagicRouter. navigateTo(const NotificationsView());
          },
        ),
      ): Container(),
    ],
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),
    title: Column(
      children:  [
        Text(
          title!,
          style:  TextStyle(color: Colors.black, fontSize: 18.sp),
        ),
        isHome ?  Text(
          'Lekki Phase 1, Estate',
          maxLines: 2,
          style: TextStyle(
            color: Colors.red,
            fontSize: 14.sp,
            overflow: TextOverflow.ellipsis,
          ),
        ):Container(),
      ],
    ),
    centerTitle: true,
    elevation: 0,
  );
}