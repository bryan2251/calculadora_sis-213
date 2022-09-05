part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class ResetAC extends CalculadoraEvent{}


class AddNumber extends CalculadoraEvent{
  final String number;
  AddNumber(this.number);
}
class AddPoint extends CalculadoraEvent{
  final String number;
  AddPoint(this.number);
}

class ChangeNevativePositive extends CalculadoraEvent{}

class DeleteLastEntry extends CalculadoraEvent{}

class OperationEntry extends CalculadoraEvent{
  final String operation;
  OperationEntry(this.operation); 
}

class CalculateResult extends CalculadoraEvent{}
