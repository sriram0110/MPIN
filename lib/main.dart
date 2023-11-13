import 'package:flutter/material.dart';
// import 'package:nds_mpin/screens/create_mpin_screen.dart';
// import 'package:nds_mpin/screens/nds_mpin.dart';
import 'package:nds_mpin/widgets/mpin_widget.dart';
// import 'package:nds_mpin/screens/create_mpin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PinScreen(createMpinText: 'Create New MPIN'),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MpinWidget(),
          ],
        ),
      ),
    );
  }
}
