import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  static CounterCubit get(context) => BlocProvider.of(context);

  int currentVal = 0;
 void add(){
   emit(CounterInitial());
   currentVal ++ ;
   emit(CounterPlus());
 }
  void min(){
    emit(CounterInitial());
    currentVal -- ;
    emit(CounterMin());
  }
}
