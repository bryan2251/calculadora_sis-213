// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:calculadora/screens/screen_calculator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/bloc/calculadora_bloc.dart';

void main(){
  runApp(AppState());
}

class AppState extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculadoraBloc>(
          create: ( _ ) => CalculadoraBloc(),
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Calculator',
      home: CalculatorScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}