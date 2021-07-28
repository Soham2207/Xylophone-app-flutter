import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int Soundnumber) {
    final player = AudioCache();
    player.play('note$Soundnumber.wav');
  }

  Expanded buildKey({int SoundNumber: 0, Color color: Colors.white}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(SoundNumber);
        },
        style: TextButton.styleFrom(
            backgroundColor: color, padding: EdgeInsets.all(0.0)),
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(SoundNumber: 1, color: Colors.red),
                buildKey(SoundNumber: 2, color: Colors.orange),
                buildKey(SoundNumber: 3, color: Colors.yellow),
                buildKey(SoundNumber: 4, color: Colors.lightGreen),
                buildKey(SoundNumber: 5, color: Colors.green),
                buildKey(SoundNumber: 6, color: Colors.blue),
                buildKey(SoundNumber: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
