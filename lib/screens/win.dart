import 'package:flutter/material.dart';
import 'package:grid_arranging/screens/moves.dart';
import 'package:grid_arranging/screens/time.dart';

class Win extends StatelessWidget {
  int moves;
  int minute,second;
  Win(this.moves, this.minute, this.second, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Moves(moves),
          Time(minute,second),
        ],
      ),
    );
  }
}
