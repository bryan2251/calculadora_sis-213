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
        yield* this._resetAC();
      } else if ( event is AddNumber ) {
        yield state.copyWith(
          mathResult: (state.mathResult == '0')
                        ? event.number
                        : state.mathResult + event.number,
        );
      }
      else if ( event is AddPoint ) {
        yield state.copyWith(
          mathResult: state.mathResult.contains('.')
                        ? state.mathResult
                        : state.mathResult + '.'
        );
      } else if (event is ChangeNevativePositive){
        yield state.copyWith(
          mathResult: state.mathResult.contains('-')
                      ? state.mathResult.replaceFirst('-', '')
                      : '-' + state.mathResult
        );
      } else if (event is DeleteLastEntry){
        yield state.copyWith(
          mathResult: state.mathResult.length > 1
                      ? state.mathResult.substring(0, state.mathResult.length - 1)
                      : '0' 
        );
      } else if ( event is OperationEntry) {
        yield state.copyWith(
          firstNumber: state.mathResult,
          mathResult: '0',
          operation: event.operation,
          secondNumber: '0'
        );
      } else if (event is CalculateResult){
        yield* _CalculateResult();
      }
  }
  Stream<CalculadoraState> _resetAC() async*{
      yield CalculadoraState(
          firstNumber: '0',
          mathResult: '0',
          secondNumber: '0',
          operation: ' '
      );
  }
  Stream<CalculadoraState> _CalculateResult() async*{

    final double num1 = double.parse(state.firstNumber);
    final double num2 = double.parse(state.mathResult);

    switch(state.operation){
      case '+':
        yield state.copyWith(
          secondNumber: state.mathResult,
          mathResult: '${num1 + num2}'
        );
      break;
      case '-':
        yield state.copyWith(
          secondNumber: state.mathResult,
          mathResult: '${num1 - num2}'
        );
      break;
      case '*':
        yield state.copyWith(
          secondNumber: state.mathResult,
          mathResult: '${num1 * num2}'
        );
      break;
      case '/':
        yield state.copyWith(
          secondNumber: state.mathResult,
          mathResult: '${num1 / num2}'
        );
      break;
      default:
        yield state;
    }
  }
}
