import 'dart:math';
import 'package:flutter/material.dart';

const _duration = Duration(milliseconds: 400);

double randomBorderRadius() {
  return Random().nextDouble() * 64;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

Color randomColor() {
  return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  late double borderRadius;
  late double margin;
  late Color color;

  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void change() {
    setState(() {
      color = randomColor();
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: AnimatedContainer(
              margin: EdgeInsets.all(margin),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              duration: _duration,
            ),
          ),
          ElevatedButton(
              onPressed: () => change(), child: const Text("Change")),
        ],
      )),
    );
  }
}
