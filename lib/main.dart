import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children : <Widget>[
            FlatButton(
              color: Colors.red,
                onPressed: (){
                  playSound(1);
            }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.orange,
                onPressed: (){
                  playSound(2);
                }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  playSound(3);
                }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.green,
                onPressed: (){
                  playSound(4);
                }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.teal,
                onPressed: (){
                  playSound(5);
                }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.blue,
                onPressed: (){
                  playSound(6);
                }, child: Text('Click Me')
            ),
            FlatButton(
                color: Colors.purple,
                onPressed: (){
                  playSound(7);
                }, child: Text('Click Me')
            ),

          ]),
        ),
      ),
    );
  }
}
