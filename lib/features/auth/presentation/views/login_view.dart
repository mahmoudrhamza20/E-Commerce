import 'package:e_commerce/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:e_commerce/features/auth/presentation/views_models/login_cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: BlocProvider(
          create: (context) => LoginCubit(),
          child:const SafeArea(child: LoginViewBody(),
          ),
        ));
  }
}
