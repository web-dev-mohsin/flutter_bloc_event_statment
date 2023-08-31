import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {}

class CounterInit extends CounterState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterUpdate extends CounterState {
  final int counter;
  CounterUpdate({required this.counter});

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}

class CounterLoadingState extends CounterState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class CounterError extends CounterState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
