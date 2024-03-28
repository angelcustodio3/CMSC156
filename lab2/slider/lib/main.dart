import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  double blueSliderValue = 0;
  double redSliderValuet = 0;
  double greenSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Lab Activity 2'),
          centerTitle: true,
          backgroundColor: Colors.red,
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 50),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: 100,
                        height: blueSliderValue,
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: 100,
                        height: redSliderValuet,
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        width: 100,
                        height: greenSliderValue,
                        decoration: BoxDecoration(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '1st Bar',
                  style: TextStyle(color: Colors.white),
                ),
                Slider(
                  activeColor: Colors.blue,
                  inactiveColor: Colors.white,
                  value: blueSliderValue,
                  min: 0,
                  max: 350,
                  onChanged: (value) {
                    setState(() {
                      blueSliderValue = value;
                    });
                  },
                ),
                const Text(
                  '2nd Bar',
                  style: TextStyle(color: Colors.white),
                ),
                Slider(
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  value: redSliderValuet,
                  min: 0,
                  max: 350,
                  onChanged: (value) {
                    setState(() {
                      redSliderValuet = value;
                    });
                  },
                ),
                const Text(
                  '3rd Bar',
                  style: TextStyle(color: Colors.white),
                ),
                Slider(
                  activeColor: Colors.green,
                  inactiveColor: Colors.white,
                  value: greenSliderValue,
                  min: 0,
                  max: 350,
                  onChanged: (value) {
                    setState(() {
                      greenSliderValue = value;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
