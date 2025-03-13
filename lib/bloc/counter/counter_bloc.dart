import 'package:different_blocs_task/bloc/counter/counter_event.dart';
import 'package:different_blocs_task/bloc/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  CounterBloc() : super(CounterInital()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterIncrement());
      count++;
    });
  }
}
