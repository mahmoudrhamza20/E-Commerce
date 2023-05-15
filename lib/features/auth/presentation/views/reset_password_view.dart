import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/reset_password_view_body.dart';
import 'package:flutter/material.dart';


class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(color: Colors.black, ) ,
        title:const  Text('Change Password',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
        body: SafeArea(child: ResetPasswordViewBody())
    );
  }
}
