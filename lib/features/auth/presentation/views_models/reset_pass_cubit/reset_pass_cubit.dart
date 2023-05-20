import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_storage.dart';
import '../../../../../core/utils/magic_router.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../data/repos/reset_pass_repo.dart';
import '../../views/login_view.dart';

part 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit() : super(ResetPassInitial());
  
  static ResetPassCubit of(context) => BlocProvider.of(context);
  final confirmPasswordController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool showPassword = true;
  bool showNewPassword = true;
  bool showConPassword = true;
 IconData suffix = Icons.visibility_off;

final resetPassRepo = ResetPassRepo();
  Future resetPass() async {
    var connectivityResult =
    await (Connectivity().checkConnectivity());
    if (connectivityResult !=
        ConnectivityResult.mobile &&
        connectivityResult !=
            ConnectivityResult.wifi) {
      showSnackBar( LocaleKeys.noInternetConnectivity.tr(),);
    }


    if (newPasswordController.text.length < 8) {
      showSnackBar('pleaseProvideAValidPasswordShouldGreaterThan8Character');
      // showSnackBar(
      //   LocaleKeys.pleaseProvideAValidPasswordShouldGreaterThan8Character.tr(),
      // );
      return;
    }
    if (newPasswordController.text !=
        confirmPasswordController.text) {
          showSnackBar('PleaseEnterASimilarPassword');
      // showSnackBar(
      //   LocaleKeys.PleaseEnterASimilarPassword.tr(),
      // );
      return;
    }
    emit(ResetPassLoading());
    final res =
    await resetPassRepo.resetPass( newPasswordController.text,confirmPasswordController.text);
    res.fold(
          (err) {
        showSnackBar(AppStorage.getLang == 'en'
            ? err
            : 'Please check your data again, you have an error in the data');
        emit(ResetPassInitial());
      },
          (res) async {
        emit(ResetPassInitial());
        MagicRouter.navigateAndPopAll(const LoginView());
      },
    );
  }

  void changePasswordVisibility (){
    showPassword = !showPassword ;
     suffix = showPassword ? Icons.visibility_off : Icons.visibility;
    emit(ChangeRegisterPasswordVisibility());
  }
  

}
