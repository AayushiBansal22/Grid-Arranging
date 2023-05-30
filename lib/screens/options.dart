import 'package:flutter/material.dart';
import 'package:grid_arranging/screens/shuffle.dart';
import 'package:grid_arranging/screens/moves.dart';
import 'package:grid_arranging/screens/time.dart';

class Options extends StatelessWidget {
  Function shuffle;
  int moves;
  int second,minute;
  var size;
  Options(this.shuffle, this.moves, this.minute, this.second, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Shuffle(shuffle),
          Moves(moves),
          Time(minute,second),
        ],
      ),
    );
  }
}
