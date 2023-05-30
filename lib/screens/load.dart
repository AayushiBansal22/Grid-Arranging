import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Load extends StatefulWidget {
  const Load({Key? key}) : super(key: key);

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {

  void getBoard() {
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, '/board');
    });
  }

  @override
  void initState() {
    super.initState();
    getBoard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background-1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: SpinKitFadingCube(
              color: Colors.white,
              size: 80.0,
            ),
          ),
        ),
      ),
    );
  }
}