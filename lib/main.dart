import 'package:flutter/material.dart';
// import 'package:nds_mpin/screens/create_mpin_screen.dart';
import 'package:nds_mpin/screens/nds_mpin.dart';
// import 'package:nds_mpin/screens/create_mpin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PinScreen(createMpinText: 'Create New MPIN'),
    );
  }
}
