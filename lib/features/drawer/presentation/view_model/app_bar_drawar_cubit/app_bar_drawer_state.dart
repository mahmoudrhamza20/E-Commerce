part of 'app_bar_drawer_cubit.dart';

abstract class AppBarDrawerState extends Equatable {
  const AppBarDrawerState();
  @override
  List<Object> get props => [];
}

class AppBarDrawerInitial extends AppBarDrawerState {}
class AppBarDrawerOpenClosed extends AppBarDrawerState {}
