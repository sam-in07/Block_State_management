import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<int>{
  // CounterCubit(super.initialState);
  CounterCubit():super(0);
  void increment() =>emit(state+1);
  void decrement() =>emit(state-1);

}