import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/screen2.dart';
import 'package:flutter_application_1/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter is fun",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     child: Center(
        //         child: Text(
        //       "Child",
        //       style: TextStyle(fontWeight: FontWeight.bold),
        //     )),
        //     width: 100,
        //     height: 100,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.lightBlue),
        //   ),
        // ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Icon(Icons.backpack),
        //     Icon(Icons.leaderboard),
        //     Icon(Icons.person),
        //     Flexible(flex: 4, child: Icon(Icons.person)),
        //     Expanded(
        //       flex: 5,
        //       child: Icon(Icons.person),
        //     ),
        //     Expanded(flex: 8, child: Icon(Icons.person))
        //   ],
        // ),
        // body: Stack(
        //   children: [
        //     Container(
        //       height: 150,
        //       width: 150,
        //       decoration: BoxDecoration(color: Colors.amber),
        //     ),
        //     Icon(Icons.add),
        //     Positioned(
        //       child: Icon(Icons.add),
        //       top: 25,
        //       left: 25,
        //     )
        //   ],
        // ),
        // body: ListView(
        //   physics: AlwaysScrollableScrollPhysics(),
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       height: MediaQuery.sizeOf(context).height,
        //       width: MediaQuery.sizeOf(context).width,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: MediaQuery.sizeOf(context).height,
        //       width: MediaQuery.sizeOf(context).width,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: MediaQuery.sizeOf(context).height,
        //       width: MediaQuery.sizeOf(context).width,
        //       color: Colors.lightGreen,
        //     ),
        //   ],
        // ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => screen1()));
                  },
                  child: Text("Go to screen one")),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => screen2()));
                  },
                  child: Text("Go to screen two")),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => screen3()));
                  },
                  child: Text("Go to screen three"))
            ],
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Button Pressed");
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.groups_3), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.update_sharp), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.call_sharp), label: "Calls")
        ]),
      ),
    );
  }
}
