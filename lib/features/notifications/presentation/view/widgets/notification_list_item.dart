import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../translations/locale_keys.g.dart';

class NotificationListItem extends StatelessWidget {
  const NotificationListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.r,
        backgroundColor: Colors.purple.shade400,
        child: const Icon(
          Icons.favorite_outlined,
          size: 22,
          color: Colors.white,
        ),
      ),
      title: Text(LocaleKeys.yourorderisConfirmcheckyourorderstatus.tr(),
          style: TextStyle(fontSize: 15.sp),
          overflow: TextOverflow.ellipsis,
          maxLines: 2),
      trailing: Text('9.24 Am',
          style: TextStyle(fontSize: 13.sp, color: Colors.grey)),
    );
  }
}
