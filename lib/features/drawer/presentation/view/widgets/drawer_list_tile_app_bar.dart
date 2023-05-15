
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar drawerListTileAppBar({ required title,widget}) {
  return AppBar(
    iconTheme:const IconThemeData(color: Colors.black) ,
    backgroundColor: Colors.white,
    elevation: 0,
    automaticallyImplyLeading: true,
    centerTitle: true,
    title: Text(title, style:  TextStyle(color: Colors.black, fontSize: 18.sp),),
    bottom: widget,
  );
}