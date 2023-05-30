import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grid_arranging/screens/title.dart';
import 'package:grid_arranging/screens/grid.dart';
import 'package:grid_arranging/screens/options.dart';
import 'package:grid_arranging/screens/win.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  int moves = 0;

  int second = 0,minute=0;
  bool isPlaying = false;
  Timer? timer;
  static const duration = Duration(seconds: 1);

  @override
  void initState() {
    super.initState();
    number.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    timer ??= Timer.periodic(duration, (t) {
        startTimer();
      });

    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      body: SafeArea(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background-1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Heading(size),
              Grid(number, size, tap),
              Options(shuffle,moves,minute,second,size),
            ],
          ),
        ),
      ),
    );
  }
  
  void tap(index) {
    if (minute == 0 && second == 0) {
      isPlaying = true;
    }

    if ((index-1 >= 0 && number[index-1] == 0 && index % 4 != 0) ||
        (index+1 < 16 && number[index+1] == 0 && (index+1) % 4 != 0) ||
        (index-4 >=0 && number[index-4] == 0) ||
        (index+4 <16 && number[index+4] == 0)) {
      setState(() {
        number[number.indexOf(0)] = number[index];
        number[index] = 0;
        moves++;
      });
    }

    checkWin();
  }

  void shuffle() {
    setState(() {
      number.shuffle();
      moves = 0;
      minute = 0;
      second = 0;
      isPlaying = false;
    });
  }

  void startTimer() {
    if (isPlaying) {
      setState(() {
        second++;
      });
      if (second==60) {
        minute++;
        second = 0;
      }
    }
  }

  bool isSorted(List numbers) {
    int before = numbers.first;
    for (var i = 1; i < numbers.length - 1; i++) {
      int after = numbers[i];
      if (before > after) {
        return false;
      }
      before = after;
    }
    return true;
  }

  void checkWin() {
    if (isSorted(number)) {
      isPlaying = false;

      showDialog(
          context: context,
          builder: (context) {

            return Dialog(
              backgroundColor: Colors.pink,
              child: Container(
                height: 300.0,
                child: Column(
                  children: <Widget>[

                    const SizedBox(height: 15.0),

                    const Text(
                      'Congratulations, YOU WIN!!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15.0),

                    Win(moves,minute,second),

                    const SizedBox(height: 30.0),

                    TextButton(

                      onPressed: () {
                        Navigator.pushNamed(context, '/load');
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[

                          Text(
                            'Play Again',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),

                          Icon(
                            Icons.double_arrow_sharp,
                            color: Colors.white,
                            size: 50.0,
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(height: 15.0),

                    TextButton(

                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[

                          Text(
                            'Back to Home',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),

                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 50.0,
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(height: 15.0),
                  ],
                ),
              ),
            );
          }
      );
    }
  }
}