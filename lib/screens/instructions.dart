import 'package:flutter/material.dart';

class Instruction extends StatelessWidget {
  const Instruction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'How to Play...',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            SizedBox(height: 30.0),
            Text(
              "1. By swapping, arrange the tiles in Numerically Ascending Order to complete the puzzle",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              "                         i.e. 1,2,3,4,....15.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              "2. Click on 'Tap to Play' button to start the game.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              "3. Tap on the tile vertically or horizontally adjacent to the empty tile to swap them.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              " It counts as one move.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              "4. Click on 'Shuffle' to get the new board.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              " It acts like a restart button for the game.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              "5. Click on 'Play Again' to replay.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 18.0),
            Text(
              "6. Click on 'Back to Home' to return to home screen.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/load');
            },
            child: Row(
              children: const <Widget>[
                Text(
                  " Play",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.double_arrow_sharp,
                  color: Colors.pink,
                  size: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
