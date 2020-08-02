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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
