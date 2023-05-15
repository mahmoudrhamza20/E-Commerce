import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
 bool localeIsEn = true;
  static LoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_off;
  bool isPasswordShown= true;
  void changePasswordVisibility (){
      emit(LoginInitial());
    isPasswordShown = !isPasswordShown ;
    suffix = isPasswordShown ? Icons.visibility_off : Icons.visibility;
    print(isPasswordShown);
    emit(ChangePasswordVisibility());
  }


}
