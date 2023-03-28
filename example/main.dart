import 'package:flutter/material.dart';
import 'package:keyboard_chord_charts/keyboard_chord_charts.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Keyboard Chord Charts Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('From Notes'),
              const SizedBox(height: 24),
              KeyboardChordChart.fromNoteIndexes(
                const {0, 4, 7, 10},
                highlightColor: Colors.blue,
                defaultColor: Colors.yellow,
              ),
              const Spacer(),
              const Text('From Colors'),
              const SizedBox(height: 24),
              KeyboardChordChart.fromColors(const [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.orange,
                Colors.purple,
                Colors.pink,
                Colors.cyan,
                Colors.teal,
                Colors.indigo,
                Colors.lime,
                Colors.brown,
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.orange,
                Colors.purple,
                Colors.pink,
                Colors.cyan,
                Colors.teal,
                Colors.indigo,
                Colors.lime,
                Colors.brown,
              ]),
              const Spacer(),
            ],
          ),
        ),
      ),
    ));
