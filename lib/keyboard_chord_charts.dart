// ignore_for_file: non_constant_identifier_names

import 'dart:math';
import 'package:flutter/material.dart';

class KeyboardChordChart extends StatelessWidget {
  final List<Color?> colors;
  final Color defaultColor;

  /// Builds a keyboard chord chart with the given colors.
  /// The list of colors has to be of length 24.
  const KeyboardChordChart.fromColors(this.colors, this.defaultColor, {Key? key})
      : assert(colors.length == 24),
        super(key: key);

  KeyboardChordChart.fromNoteIndexes(Set<int> noteIndexes,
      {Color highlightColor = Colors.blue,Color defaultColor = Colors.transparent, Key? key})
      : this.fromColors(
            List.generate(
                    24,
                    (index) =>
                        noteIndexes.contains(index) ? highlightColor : null)
                .toList(),
            defaultColor,
            key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double ratio = 0.5;
      double maxWidth =
          min(constraints.maxWidth, constraints.maxHeight * 168 / 50) * ratio;
      return CustomPaint(
        size: Size(maxWidth, maxWidth * 50 / 168),
        painter: _KeyboardPainter(colors, defaultColor),
      );
    });
  }
}

class _KeyboardPainter extends CustomPainter {
  final List<Color?> noteColors;
  Color defaultColor = Colors.transparent;

  _KeyboardPainter(this.noteColors, this.defaultColor) {
    assert(noteColors.length == 24);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint stroke_painter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005952381
      ..color = Colors.black;
    Paint fill_painter = Paint()..style = PaintingStyle.fill;

    fill_painter.color = noteColors[0] ?? defaultColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width * 0.06845238, size.height),
        fill_painter);

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width * 0.06845238, size.height),
        stroke_painter);

    fill_painter.color = noteColors[2] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.06845238, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.06845238, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[4] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.1398810, 0, size.width * 0.06845238, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.1398810, 0, size.width * 0.06845238, size.height),
        stroke_painter);

    fill_painter.color = noteColors[5] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.2083333, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.2083333, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[7] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.2797619, 0, size.width * 0.07440476, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.2797619, 0, size.width * 0.07440476, size.height),
        stroke_painter);

    fill_painter.color = noteColors[9] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.3541667, 0, size.width * 0.07440476, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.3541667, 0, size.width * 0.07440476, size.height),
        stroke_painter);

    fill_painter.color = noteColors[11] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.4285714, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.4285714, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[1] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.04166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.04166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[3] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1250000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1250000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[6] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2500000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2500000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[8] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3333333, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3333333, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[10] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[12] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.5000000, 0, size.width * 0.06845238, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.5000000, 0, size.width * 0.06845238, size.height),
        stroke_painter);

    fill_painter.color = noteColors[14] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.5684524, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.5684524, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[16] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.6398810, 0, size.width * 0.06845238, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.6398810, 0, size.width * 0.06845238, size.height),
        stroke_painter);

    fill_painter.color = noteColors[17] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.7083333, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.7083333, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[19] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.7797619, 0, size.width * 0.07440476, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.7797619, 0, size.width * 0.07440476, size.height),
        stroke_painter);

    fill_painter.color = noteColors[21] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.8541667, 0, size.width * 0.07440476, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.8541667, 0, size.width * 0.07440476, size.height),
        stroke_painter);

    fill_painter.color = noteColors[23] ?? defaultColor;
    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.9285714, 0, size.width * 0.07142857, size.height),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(
            size.width * 0.9285714, 0, size.width * 0.07142857, size.height),
        stroke_painter);

    fill_painter.color = noteColors[13] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5416667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5416667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[15] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6250000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6250000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[18] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7500000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7500000, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[20] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8333333, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8333333, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    fill_painter.color = noteColors[22] ?? Colors.black;
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        fill_painter);

    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9166667, 0, size.width * 0.04166667,
            size.height * 0.6000000),
        stroke_painter);

    // Paint stroke_painter = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = size.width * 0.005952381;
    //
    // canvas.drawRect(
    //     Rect.fromLTWH(size.width * 0, size.height * 0, size.width, size.height),
    //     stroke_painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
