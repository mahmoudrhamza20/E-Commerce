import 'package:e_commerce/features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';


class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        iconTheme:const IconThemeData(color: Colors.black, ) ,
        elevation: 0,
      ),
      body: SafeArea(child: ForgetPasswordViewBody()),
    );
  }
}
