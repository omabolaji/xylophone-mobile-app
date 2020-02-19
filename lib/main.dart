import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Xylophone'),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: HomePages(),
      ),
    );
  }
}

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  //play the audio file note
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  //functions to play file
  Expanded getPlayers({Color color, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              color: Colors.red,
//              onPressed: () {
//                playAudio(1);
//              },
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                playAudio(2);
//              },
//              color: Colors.pink.shade900,
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                playAudio(3);
//              },
//              color: Colors.blue,
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                playAudio(4);
//              },
//              color: Colors.blueGrey.shade800,
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                playAudio(5);
//              },
//              color: Colors.deepPurpleAccent,
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                playAudio(6);
//              },
//              color: Colors.yellowAccent,
//            ),
//          ),
          getPlayers(
            color: Colors.red,
            noteNumber: 1,
          ),
          getPlayers(
            color: Colors.pink.shade900,
            noteNumber: 2,
          ),
          getPlayers(
            color: Colors.blue,
            noteNumber: 3,
          ),
          getPlayers(
            color: Colors.blueGrey.shade800,
            noteNumber: 4,
          ),
          getPlayers(
            color: Colors.deepPurpleAccent,
            noteNumber: 5,
          ),
          getPlayers(
            color: Colors.yellowAccent,
            noteNumber: 6,
          ),
        ],
      ),
    );
  }
}
