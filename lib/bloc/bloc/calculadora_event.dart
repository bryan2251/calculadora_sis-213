part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class ResetAC extends CalculadoraEvent{}


class AddNumber extends CalculadoraEvent{
final String number;
  AddNumber(this.number);
}