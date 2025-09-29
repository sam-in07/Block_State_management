 //evenmt & state ke join korbo
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';


 class CounterBlock extends Bloc<CounterEvent, CounterStates> {
  CounterBlock() : super(CounterStates(counterValue: 0)) {
   on<Increment>((event, emit) {
    //CounterBlock SATHE CONNECT
    emit(CounterStates(counterValue: state.counterValue + 1));
   });
   on<Decrement>((event, emit) {
    //CounterBlock SATHE CONNECT
    emit(CounterStates(counterValue: state.counterValue - 1));
   });
  }




 }