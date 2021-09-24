// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Section_B extends StatefulWidget {
  const Section_B({Key? key}) : super(key: key);

  @override
  _Section_BState createState() => _Section_BState();
}

class _Section_BState extends State<Section_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD4F2ED),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Section B',
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Custom_Button(
                  textBtn: 'Schedule Waste\nDisposal',
                  imagePath: "assets/images/schedule2.jpg",
                ),
                Custom_Button(
                  textBtn: 'CPC',
                  imagePath: "assets/images/cost.jpg",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Custom_Button(
                  textBtn: 'Digitalisation\nDeclaration',
                  imagePath: "assets/images/digital.jpg",
                ),
                Custom_Button(
                  textBtn: 'PHE\nDeclaration',
                  imagePath: "assets/images/phe.jpg",
                ),
              ],
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
  final textBtn;
  final imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
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
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
