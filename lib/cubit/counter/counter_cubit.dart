import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/cubit/counter/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit():super(CounterState(count: 0));

  void increament() => emit(CounterState(count: state.count + 1)) ;
  void decreament() => emit(CounterState(count: state.count - 1)) ;
}