import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_event_statment/bloc/counter_event.dart';
import 'package:flutter_block_event_statment/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit()) {
    on<CounterIncrease>((event, emit) {
      counter = counter + 1;
      emit(CounterUpdate(counter: counter));
    });

    on<CounterDecrease>((event, emit) {
      counter = counter - 1;
      emit(CounterUpdate(counter: counter));
    });
  }
}
