## Features

This is a simple package to display keyboard chord charts. It could be used to display any melody on a simple keyboard setup, or it could be used to animate the playing on a piano keyboard, but this package's primary purpuse is to show chords on a simple keyboard chart.

This package works well with the [chord](https://pub.dev/packages/chord) package, a package which can parse chords from strings.

## Usage

The main widget is `KeyboardChordCharts`. It has two variations: `fromNoteIndexes` and `fromColors`. 

In the first one you provide a set of notes that get colored in the provided color.

Alternatively you can provide a list of colors that get used to color the respective keys. Null can be provided as a color, which will leave the key uncolored.

```dart
KeyboardChordChart.fromNoteIndexes(
  {0, 4, 7, 10},
  highlightColor: Colors.blue,
);

KeyboardChordChart.fromColors([
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
]);
```

## Additional information

Currently only two octaves can be shown. In the future I might make the package more flexible. Any suggestions are welcome. Small changes like adding certain parameters I can usually implement pretty quickly. Also consider starring the repo on Github :).
