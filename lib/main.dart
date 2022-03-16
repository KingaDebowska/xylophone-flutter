import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.loadAll([
      'note1.wav',
      'note2.wav',
      'note3.wav',
      'note4.wav',
      'note5.wav',
      'note6.wav',
      'note7.wav'
    ]);
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color colName, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colName,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colName: Colors.red, soundNumber: 1),
              buildKey(colName: Colors.orange, soundNumber: 2),
              buildKey(colName: Colors.yellow, soundNumber: 3),
              buildKey(colName: Colors.green, soundNumber: 4),
              buildKey(colName: Colors.teal, soundNumber: 5),
              buildKey(colName: Colors.blue, soundNumber: 6),
              buildKey(colName: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
