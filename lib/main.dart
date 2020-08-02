import 'package:flutter/material.dart';

void main() {
  runApp(DicesApp());
}

class DicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('Dices'),
        ),
        backgroundColor: Colors.indigoAccent,
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('left');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('right');
                },
                child: Image.asset('images/dice1.png'),
              ),
            ),
          ],
          mainAxisSize: MainAxisSize.max,
        ),
      ),
    );
  }
}
