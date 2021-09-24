// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Section_C extends StatefulWidget {
  const Section_C({Key? key}) : super(key: key);

  @override
  _Section_CState createState() => _Section_CState();
}

class _Section_CState extends State<Section_C> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD4F2ED),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Section C',
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              // ignore: duplicate_ignore
              image: DecorationImage(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    'assets/images/monthly2.jpg',
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
              'Monthly External Test\nTest Results',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
