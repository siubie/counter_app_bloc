import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counterValue: 0)) {
    //Event Transformer
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
      if (event is Increment) {
        //emit state
        emit(CounterState(counterValue: state.counterValue + 1));
      }
      if (event is Decrement) {
        // emit();
        if (state.counterValue > 0) {
          emit(CounterState(counterValue: state.counterValue - 1));
        }
      }
    });
  }
}
