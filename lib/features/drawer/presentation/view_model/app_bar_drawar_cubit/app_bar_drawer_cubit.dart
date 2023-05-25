import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_bar_drawer_state.dart';

class AppBarDrawerCubit extends Cubit<AppBarDrawerState> {
  AppBarDrawerCubit() : super(AppBarDrawerInitial());
  static AppBarDrawerCubit get(context) => BlocProvider.of(context);
  bool isOpened= false;
  void changeStatus (){
    isOpened = !isOpened ;
    emit(AppBarDrawerOpenClosed());
  }
}
