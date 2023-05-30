import 'package:flutter/material.dart';

class Shuffle extends StatelessWidget {
  Function shuffle;
  Shuffle(this.shuffle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          shuffle();
        },
      child: Row(
        children: const <Widget>[
          Text(
            'Shuffle',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          Icon(
            Icons.repeat,
            color: Colors.white,
            size: 25.0,
          ),
        ],
      ),
    );
  }
}
