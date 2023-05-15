import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/magic_router.dart';
import '../menu_item_details_view.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: InkWell(
        onTap: ()=>MagicRouter. navigateTo(const MenuItemDetailsView()),
        child: Column(
          children: [
             SizedBox(height: 20.h,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 70.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor,width: 1),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                Container(
                  width: 55.w,
                  height: 85.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                SizedBox(
                  width:50.w ,
                  child: Column(
                    children:  [
                     const Icon(Icons.camera_alt_outlined,color: kPrimaryColor,),
                      Text('Camera',maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,),),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}