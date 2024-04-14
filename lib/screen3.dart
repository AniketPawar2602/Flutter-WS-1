import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? colorAnimation;
  Animation? sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    colorAnimation = ColorTween(begin: Colors.blueAccent, end: Colors.yellow)
        .animate(controller!);

    colorAnimation = ColorTween(begin: Colors.blueAccent, end: Colors.yellow)
        .animate(CurvedAnimation(parent: controller!, curve: Curves.bounceOut));

    sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(
        CurvedAnimation(parent: controller!, curve: Curves.decelerate));

    controller?.addListener(() {
      setState(() {});
    });
    controller?.repeat();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: sizeAnimation?.value,
          width: sizeAnimation?.value,
          color: colorAnimation?.value,
        ),
      ),
    );
  }
}
