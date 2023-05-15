import 'package:e_commerce/features/auth/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';



class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: RegisterViewBody()));
  }
}
