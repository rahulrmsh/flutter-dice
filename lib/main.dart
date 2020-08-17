import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepOrange[600],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Dice',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Clootie',
                fontSize: 40,
              ),
            ),
            backgroundColor: Colors.deepOrange[600],
          ),
          body: DicePage(),
        ),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftKey1 = 1;
  int rightKey1 = 1;
  int leftKey2 = 1;
  int rightKey2 = 1;
  int leftKey3 = 1;
  int rightKey3 = 1;
  void diceChange() {
    setState(() {
      leftKey1 = Random().nextInt(6) + 1;
      rightKey1 = Random().nextInt(6) + 1;
      leftKey2 = Random().nextInt(6) + 1;
      rightKey2 = Random().nextInt(6) + 1;
      leftKey3 = Random().nextInt(6) + 1;
      rightKey3 = Random().nextInt(6) + 1;
    });
  }
  void goBack() {
    setState(() {
      leftKey1 = 1;
      rightKey1 = 1;
      leftKey2 = 1;
      rightKey2 = 1;
      leftKey3 = 1;
      rightKey3 = 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 64,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onLongPress: () {
                        goBack();
                      },
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        diceChange();
                      },
                      child: Image(
                      image: AssetImage('assets/dice$leftKey1.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onLongPress: () {
                        goBack();
                      },
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      diceChange();
                    },
                    child: Image.asset('assets/dice$rightKey1.png')
                  )
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onLongPress: () {
                        goBack();
                      },
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        diceChange();
                      },
                      child: Image(
                      image: AssetImage('assets/dice$leftKey2.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onLongPress: () {
                        goBack();
                      },
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      diceChange();
                    },
                    child: Image.asset('assets/dice$rightKey2.png')
                  )
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onLongPress: () {
                        goBack();
                      },
                      padding: EdgeInsets.all(8),
                      onPressed: () {
                        diceChange();
                      },
                      child: Image(
                      image: AssetImage('assets/dice$leftKey3.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    onLongPress: () {
                        goBack();
                      },
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      diceChange();
                    },
                    child: Image.asset('assets/dice$rightKey3.png')
                  )
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}