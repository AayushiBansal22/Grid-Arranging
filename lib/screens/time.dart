import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  int second,minute;
  Time(this.minute, this.second, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        "Time Taken: ${minute}m ${second}s",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
