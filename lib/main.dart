import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildLayout({Color color, int key}){
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
                buildLayout(color : Colors.red, key : 1),
                buildLayout(color : Colors.orange, key : 2),
                buildLayout(color : Colors.yellow, key : 3),
                buildLayout(color : Colors.green, key : 4),
                buildLayout(color : Colors.teal, key : 5),
                buildLayout(color : Colors.blue, key : 6),
                buildLayout(color : Colors.purple, key : 7),

          ]),
        ),
      ),
    );
  }
}