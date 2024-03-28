import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Checkerboard",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Center(
          child: Checkboard(),
        ),
      ),
    );
  }
}

class Checkboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            //childAspectRatio: 8.0,
            //mainAxisSpacing: 4.0,
            //crossAxisSpacing: 4.0,
          ),
          itemBuilder: (context, index) {
            int row = index ~/ 8;
            int column = index % 8;
            if ((row + column) % 2 == 0) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  if (row < 3) const CheckerPiece(color: Colors.red),
                  if (row > 4) const CheckerPiece(color: Colors.blue),
                ],
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class CheckerPiece extends StatelessWidget {
  final Color color;

  const CheckerPiece({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CircleAvatar(backgroundColor: color, radius: 25.0),
    );
  }
}
