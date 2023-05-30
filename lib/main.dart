import 'package:flutter/material.dart';
import 'package:grid_arranging/screens/home.dart';
import 'package:grid_arranging/screens/load.dart';
import 'package:grid_arranging/screens/instructions.dart';
import 'package:grid_arranging/screens/board.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/instructions': (context) => const Instruction(),
      '/home': (context) => const Home(),
      '/load': (context) => const Load(),
      '/board': (context) => const Board(),
     },
   )
  );
}