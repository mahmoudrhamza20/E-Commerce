import 'package:flutter/material.dart';

import 'notification_list_item.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
            const SizedBox(height: 8,),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>const NotificationListItem(),),
          ),

        ]
      ),
    );
  }
}

