import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/cache_helper.dart';
import '../../../../../core/widgets/custom_snackbar.dart';
import '../../../../../translations/locale_keys.g.dart';
import '../../../data/repos/register_repo.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
 static RegisterCubit get(context) => BlocProvider.of(context);
  bool showPassword = true;
  bool showConPassword = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
   final registerRepo = RegisterRepo();

 Future register() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.mobile &&
        connectivityResult != ConnectivityResult.wifi) {
      showSnackBar(
        LocaleKeys.noInternetConnectivity.tr(),
      );
    }
    if (passwordController.text.contains('@')) {
      showSnackBar(
        LocaleKeys.pleaseProvideAValidEmailAddress.tr(),
      );
      return;
    }
    if (passwordController.text.length < 8) {
      showSnackBar(
        LocaleKeys.pleaseProvideAValidPasswordShouldGreaterThan8Character.tr(),
      );
      return;
    }
    if (phoneController.text.length < 10) {
      showSnackBar(
        LocaleKeys.pleaseProvideAValidPhoneNumber.tr(),
      );
      return;
    }
    if (passwordController.text != confirmPasswordController.text) {
      showSnackBar(
        LocaleKeys.PleaseEnterASimilarPassword.tr(),
      );
      return;
    }
    emit(RegisterLoading());
    final res = await registerRepo.register(
        nameController.text,
        emailController.text,
        phoneController.text,
        passwordController.text,
        confirmPasswordController.text
    );
    res.fold(
          (err) {
       showSnackBar(err);
        emit(RegisterInitial());
      },
          (res) async {
            showSnackBar( CacheHelper.getData(key: 'lang') !='en'
                  ? res.message:'Logged in successfully');
        emit(RegisterInitial());
        // await CacheHelper.saveData(key: 'userId', value: res.data.id);
        // await CacheHelper.saveData(key: 'userName', value: res.data.name);
        // await CacheHelper.saveData(key: 'email', value: res.data.email);
        // await CacheHelper.saveData(key: 'photo', value: res.data.photo);
        // await CacheHelper.saveData(key: 'phone', value: res.data.phone);
        // await CacheHelper.saveData(key: 'login', value: true);
        // MagicRouter.navigateAndPopAll(const MainScreen());
      },
    );
  }

  IconData suffix = Icons.visibility_off;
  bool isPasswordShown= true;
  void changePasswordVisibility (){
    isPasswordShown = !isPasswordShown ;
    suffix = isPasswordShown ? Icons.visibility_off : Icons.visibility;
    emit(ChangeRegisterPasswordVisibility());
  }
}
