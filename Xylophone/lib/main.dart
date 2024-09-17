import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(x) {
    final player = AudioPlayer();
    player.play(AssetSource('note$x.wav'));
  }

  Expanded buildKey({color, x}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(x);
        },
        child: Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, x: 1),
              buildKey(color: Colors.orange, x: 2),
              buildKey(color: Colors.yellow, x: 3),
              buildKey(color: Colors.green, x: 4),
              buildKey(color: Colors.teal, x: 5),
              buildKey(color: Colors.blue, x: 6),
              buildKey(color: Colors.purple, x: 7),
            ],
          ),
        ),
      ),
    );
  }
}
