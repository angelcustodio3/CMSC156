import 'package:flutter/material.dart';
import 'package:navigation/checkerboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title:
                Title(color: Colors.white, child: const Text('Lab Activity 3')),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                    'Tap the button for the Laboratory Activity you want to see.'),
                Container(
                  padding: EdgeInsets.all(2),
                  child: ElevatedButton(
                    //style: ButtonStyle(padding: ),
                    child: const Text('Lab Activity 1'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const board(),
                        ),
                      );
                      // go to lab 1
                    },
                  ),
                ),
                //Spacer(),
                Container(
                  padding: EdgeInsets.all(2),
                  child: ElevatedButton(
                    child: const Text('Lab Activity 2'),
                    onPressed: () {
                      // go to lab 1
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
