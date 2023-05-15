
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/notifications/presentation/view/widgets/notifications_view_body.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(color: Colors.black, ) ,
        title:const  Text('Notification',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
      body:const NotificationsViewBody() ,
    );
  }
}
