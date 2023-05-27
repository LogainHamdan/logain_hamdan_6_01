import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF1A237E),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rock Paper Scissors',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  fontFamily: 'CustomFont',
                  fontSize: 25,
                  wordSpacing: 8),
            ),
          ),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: GamePage(),
      ),
    ),
  );
}

class myGameState extends State<GamePage> {
  int rightPic = Random().nextInt(3) + 1;
  int leftPic = Random().nextInt(3) + 1;

  void randme() {
    setState(() {
      leftPic = Random().nextInt(3) + 1;
      rightPic = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // GestureDetector(
          //     // onTap: randme,
          //     ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: randme,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blue,
                              width: 8.0,
                            ),
                            image: DecorationImage(
                                image: AssetImage("images/$rightPic.png"))),
                        // child: CircleAvatar(
                        //   radius: 70,
                        //   backgroundColor: Colors.transparent,
                        //   backgroundImage: AssetImage("images/$rightPic.png"),
                        // ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.yellow,
                            width: 8,
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/$leftPic.png"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 1)),
                    Text(
                      "  You",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'CustomFont',
                        color: Colors.white70,
                      ),
                    ),
                    Text(
                      "VS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'CustomFont',
                          color: Colors.black87),
                    ),
                    Text(
                      "System   ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontFamily: 'CustomFont',
                          color: Colors.white70),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myGameState();
  }
}
