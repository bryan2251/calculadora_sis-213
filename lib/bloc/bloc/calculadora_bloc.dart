import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, CalculadoraState> {
  CalculadoraBloc() : super(CalculadoraState());

  @override
  Stream<CalculadoraState> mapEventToState(
    CalculadoraEvent event,
  ) async* {
    
      if ( event is ResetAC ) {
        yield CalculadoraState(
          firstNumber: '0',
          mathResult: '0',
          secondNumber: '0',
          operation: 'none'
        );
      } else if ( event is AddNumber ) {
        yield CalculadoraState(
          firstNumber: '0',
          secondNumber: '0',
          operation: 'none',
          mathResult: (state.mathResult == '0')
                        ? event.number
                        : state.mathResult + event.number,
        );
      }


  }
}
