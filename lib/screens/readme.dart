import 'package:flutter/material.dart';

class readme extends StatelessWidget {

Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: [
      Image.asset('images/readme.png',
        width: 600,
        height: 240,
        fit: BoxFit.cover,
      ),

      ],
      ),
    );

}
}