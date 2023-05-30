import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  var size;
  Heading(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.10,
      padding: const EdgeInsets.all(5.0),
      child: Text(
        'Grid Arranging',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size.height*0.05,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
