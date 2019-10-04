import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());



class XyloPhone extends StatelessWidget {

  FlatButton createMusicButton(Color buttoncolor, int note){
    return FlatButton(
      color: buttoncolor,
      onPressed: () {
        AudioCache player = AudioCache();
        player.play("note$note.wav");
      },
      child: Text(""),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: createMusicButton(Colors.red, 1)
              ),
              Expanded(
                  flex: 1,
                  child: createMusicButton(Colors.orange, 2)
              ),
              Expanded(
                  flex: 1,
                  child: createMusicButton(Colors.yellow, 3)
              ),
              Expanded(
                flex: 1,
                  child: createMusicButton(Colors.green, 4)
              ),
              Expanded(
                flex: 1,
                  child: createMusicButton(Colors.blue, 5)
              ),
              Expanded(
                  flex: 1,
                  child: createMusicButton(Colors.indigo, 6)
              ),
              Expanded(
                  flex: 1,
                  child: createMusicButton(Colors.purple, 7)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

