import 'package:flutter/material.dart';

class Constants {
  static BoxDecoration boxDecoration = const BoxDecoration(
    gradient: LinearGradient(colors: [
      Color.fromARGB(255, 227, 239, 251),
      Color.fromARGB(255, 249, 244, 238),
    ], begin: Alignment.topRight, end: Alignment.bottomLeft),
  );
  // static List<Color> backgroundColor = const [
  //   Color.fromARGB(255, 227, 239, 251),
  //   Color.fromARGB(255, 249, 244, 238)
  // ];
}
