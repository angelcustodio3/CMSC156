import 'package:flutter/material.dart';
import 'package:navigation/checkerboard.dart';
import 'package:navigation/slider.dart';

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
          title: Text('Lab Activity 3'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.all(10)),

            // checkerboard
            GestureDetector(
                //child: Text,
                )
            //slider
          ],
        ),
      ),
    );
  }
}
