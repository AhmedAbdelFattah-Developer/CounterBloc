import 'package:counter_bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitState());
  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int counter = 0;

  void increment() {
    counter++;
    emit(Incrementstate());
  }

  void decrement() {
    counter--;
    emit(Decrementstate());
  }
}
