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
}

