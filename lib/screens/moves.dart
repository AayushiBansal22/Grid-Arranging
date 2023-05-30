import 'package:flutter/material.dart';

class Moves extends StatelessWidget {
  int moves;
  Moves(this.moves, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        "Moves: ${moves}",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
