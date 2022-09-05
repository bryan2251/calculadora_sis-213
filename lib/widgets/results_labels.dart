// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:calculadora/bloc/bloc/calculadora_bloc.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/main_result.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:calculadora/bloc/bloc/calculadora_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultsLabels extends StatelessWidget {
  const ResultsLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculadoraBloc, CalculadoraState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operation),
            SubResult(text: state.secondNumber),
            LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
