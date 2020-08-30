import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //int songNumber;
  void playSound(int songNumber){
    final player =AudioCache();
    player.play('note$songNumber.wav');
  }
  Expanded buildKey(Color color ,int num){
    return Expanded(
      child: FlatButton(


        color: color,
        onPressed: (){
          playSound(num);
        },

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

            buildKey(Colors.red,1),
              buildKey(Colors.greenAccent,2),
              buildKey(Colors.blue,3),
              buildKey(Colors.pink,4),
              buildKey(Colors.yellow,5),
              buildKey(Colors.green,6),
              buildKey(Colors.orange,7),
            ],

          ),
          ) ,
        ),
      );

  }
}
