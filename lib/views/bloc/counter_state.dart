part of 'counter_bloc.dart';

sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterValue extends CounterState {
  final int count;
  CounterValue(this.count);
}
