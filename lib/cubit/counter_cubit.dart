import 'package:counter_with_cubit/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(IntialCounter());

  int counter = 0;

  add() async {
    emit(LoadingCounter());
    await Future.delayed(Duration(seconds: 1));
    counter++;
    emit(UpdatedCounter());
  }

  remove() async {
    emit(LoadingCounter());
    await Future.delayed(Duration(seconds: 1));
    if (counter > 0) {
      counter--;
    }
    emit(UpdatedCounter());
  }

  reset() async {
    emit(LoadingCounter());
    await Future.delayed(Duration(seconds: 1));
    counter = 0;
    emit(UpdatedCounter());
  }
}
