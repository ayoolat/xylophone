import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int tileNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$tileNumber.wav'));
  }

  Expanded buildKey(int tileNumber, Color color) => Expanded(
        child: TextButton(
          child: Text(''),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          onPressed: () {
            playAudio(tileNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.lightGreen),
                buildKey(5, Colors.green),
                buildKey(6, Colors.indigo),
                buildKey(7, Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
