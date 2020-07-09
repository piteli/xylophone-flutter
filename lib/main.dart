import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Widget buildLayout(Color color, int key){
    return Expanded(
        child : FlatButton(
            color: color,
            onPressed: (){
              playSound(key);
            }, child: Text('Click Me')
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor : Colors.black,
          body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children : <Widget>[
                buildLayout(Colors.red, 1),
                buildLayout(Colors.orange, 2),
                buildLayout(Colors.yellow, 3),
                buildLayout(Colors.green, 4),
                buildLayout(Colors.teal, 5),
                buildLayout(Colors.blue, 6),
                buildLayout(Colors.purple, 7)

          ]),
        ),
      ),
    );
  }
}