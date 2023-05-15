import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constants.dart';

class ListTileOfDrawer extends StatelessWidget {
  const ListTileOfDrawer({
    super.key, this.onTap, required this.leadingIcon, required this.title,
  });
  final void Function()? onTap ;
  final IconData leadingIcon ;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(leadingIcon,color:kPrimaryColor ,size: 23.r,),
      title: Text(title,style: const TextStyle(color: Colors.black),),
      dense: true,
    );
  }
}