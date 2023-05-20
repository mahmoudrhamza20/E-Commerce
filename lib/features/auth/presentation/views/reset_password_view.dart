import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/reset_password_view_body.dart';
import 'package:e_commerce/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../views_models/reset_pass_cubit/reset_pass_cubit.dart';


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
        title:  Text(LocaleKeys.changePassword.tr(),style: const TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 0,
      ),
        body: BlocProvider<ResetPassCubit>(
          create: (context) => ResetPassCubit(),
          child: SafeArea(
            child: ResetPasswordViewBody()),
        )
    );
  }
}
