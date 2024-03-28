import 'package:flutter/material.dart';

void main() {
  runApp(const navButton());
}

class navButton extends StatefulWidget {
  const navButton({super.key});

  @override
  State<navButton> createState() => _navButtonState();
}

class _navButtonState extends State<navButton> {
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
