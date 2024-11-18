import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      if (state is CounterValue) {
        final currentCount = (state as CounterValue).count;
        emit(CounterValue(currentCount + 1));
      } else {
        emit(CounterValue(1));
      }
    });
  }
}
