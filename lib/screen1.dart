import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  double opacityx = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    String owlUrl =
        "https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg";

    return Scaffold(
      appBar: AppBar(
        title: Text("This is First Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              owlUrl,
              height: height * 0.2,
            ),
            TextButton(
                onPressed: () => setState(() {
                      opacityx = 1;
                    }),
                child: Text("Show Details")),
            AnimatedOpacity(
              opacity: opacityx,
              duration: const Duration(seconds: 5),
              child: Column(
                children: [
                  Text("This is bird"),
                  Text("This is owl"),
                  Text("This is living organism")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
