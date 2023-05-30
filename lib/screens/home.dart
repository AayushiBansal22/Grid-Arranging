import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 50.0,bottom: 180.0),
                child: Text(
                  'Grid Arranging',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 150.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/load');
                    },

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Tap to Play',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                   ],
                  ),
                ),
              ),

              TextButton(

                onPressed: () {
                  Navigator.pushNamed(context, '/instructions');
                  },

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 50.0),
                  child: Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0,0.0,7.0,0.0),
                        child: Text(
                          'How to Play',
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Icon(
                        Icons.menu_book,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}