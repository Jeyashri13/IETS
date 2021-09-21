import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IETS',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IETS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Center(child: const Text('IETS')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Center(
              child: CustomButton(
                colorList: [
                  Color(0xFFAF30DE),
                  Color(0xFFE0A4F7),
                ],
                btnText: 'Section A',
                shadowColor: Color(0xFFE3E0E6),
                btnText2: 'Daily IETS Monitoring',
              ),
            ),
          ),
          Container(
            child: const Center(
              child: CustomButton(
                colorList: [
                  Color(0xFF439AD4),
                  Color(0xFFA5D6F7),
                ],
                btnText: 'Section B',
                shadowColor: Color(0xFFE3E0E6),
                btnText2: 'Daily Internal Results',
              ),
            ),
          ),
          Container(
            child: const Center(
              child: CustomButton(
                colorList: [
                  Color(0xFFEB294C),
                  Color(0xFFFA96A8),
                ],
                btnText: 'Section C',
                shadowColor: Color(0xFFE3E0E6),
                btnText2: 'Monthly External Test Results\n(Final Discharge)',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.btnText,
    required this.colorList,
    required this.shadowColor,
    required this.btnText2,
    // required this.icon,
    // required this.navigator,
  }) : super(key: key);
  final List<Color> colorList;
  final String btnText;
  final String btnText2;
  final Color shadowColor;
  // final icon;
  // final navigator;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50.0,
      width: 300.0,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0.0, 20.0), blurRadius: 10.0, color: shadowColor)
      ], color: Colors.white, borderRadius: BorderRadius.circular(22.0)),
      child: Container(
        padding: const EdgeInsets.only(left: 12.0, top: 12.0),
        height: 150.0,
        width: 300.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              btnText,
              style: const TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: Text(
                btnText2,
                style: const TextStyle(fontSize: 13.0, color: Colors.white),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colorList),
          color: Colors.blueAccent,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            topLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(15.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
