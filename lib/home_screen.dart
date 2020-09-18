import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget getTile(Color color, String audioPath) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          AudioCache player = AudioCache();

          await player.play(audioPath);
          player.clear(audioPath);

          print('tap: $audioPath');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            getTile(Colors.red, 'note1.wav'),
            getTile(Colors.orange, 'note2.wav'),
            getTile(Colors.yellow, 'note3.wav'),
            getTile(Colors.green, 'note4.wav'),
            getTile(Colors.pink, 'note5.wav'),
            getTile(Colors.blue, 'note6.wav'),
            getTile(Colors.brown, 'note7.wav'),
          ],
        ),
      ),
    );
  }
}
