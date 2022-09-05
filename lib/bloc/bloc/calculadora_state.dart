part of 'calculadora_bloc.dart';

class CalculadoraState {
  final String mathResult;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculadoraState({
    this.mathResult = '30', 
    this.firstNumber = '10', 
    this.secondNumber = '20', 
    this.operation = '+'
  });

  CalculadoraState copyWith({
    String? mathResult,
    String? firstNumber,
    String? secondNumber,
    String? operation,
    
  }) => CalculadoraState(
    mathResult: mathResult ?? this.mathResult,
    firstNumber: firstNumber ?? this.firstNumber,
    secondNumber: secondNumber ?? this.secondNumber,
    operation: operation ?? this.operation,
    
  );

}

