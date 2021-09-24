// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
//khhu
// ignore_for_file: camel_case_types, file_names
//ki
import 'package:flutter/material.dart';

class Section_A extends StatefulWidget {
  const Section_A({Key? key}) : super(key: key);

  @override
  _Section_AState createState() => _Section_AState();
}

class _Section_AState extends State<Section_A> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffD4F2ED),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Section A',
          style: TextStyle(fontFamily: "Montserrat"),
        )),
        backgroundColor: Colors.blueAccent,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Custom_Button(
              textBtn: 'pH & Temperature',
              imagePath: "assets/images/temperature.jpg",
            ),
            Custom_Button(
              textBtn: 'Incoming & Outgoing\nFlow Rate',
              imagePath: "assets/images/data.jpg",
            ),
            Custom_Button(
              textBtn: 'Schedule Waste (SW321)\nFrom Filter Press',
              imagePath: "assets/images/schedule.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

class Custom_Button extends StatelessWidget {
  const Custom_Button({
    Key? key,
    required this.textBtn,
    required this.imagePath,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final textBtn;
  // ignore: prefer_typing_uninitialized_variables
  final imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          // ignore: duplicate_ignore
          image: DecorationImage(
              // ignore: prefer_const_constructors
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken)),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0.0, 20.0),
                blurRadius: 10.0,
                color: Color(0xFFC9DBCE))
          ],
          // gradient: const LinearGradient(
          //     colors: [Color(0xFFF19AF9), Color(0xFFffffff)]),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          textBtn,
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
