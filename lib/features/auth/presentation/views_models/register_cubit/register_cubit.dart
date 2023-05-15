import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);


  IconData suffix = Icons.visibility_off;
  bool isPasswordShown= true;
  void changePasswordVisibility (){
    isPasswordShown = !isPasswordShown ;
    suffix = isPasswordShown ? Icons.visibility_off : Icons.visibility;
    emit(ChangeRegisterPasswordVisibility());
  }
}
