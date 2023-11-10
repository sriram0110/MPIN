import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/mpin_widget.dart';

class PinScreen extends StatelessWidget {
  final String createMpinText;
  const PinScreen({super.key, required this.createMpinText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: Constants.boxDecoration,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/nds-logo.png',
                height: 30,
                width: 30,
              ),
              const SizedBox(
                height: 30,
              ),
               Text(
                createMpinText,
                // 'Create New MPIN',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Enter 6 digit PIN number',
                style: TextStyle(fontSize: 14.0),
              ),
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text('ENTER NEW MPIN'), 
              ),
              const SizedBox(
                height: 30,
              ),
              MpinWidget(),
            ],
          ),
        ),
      ),
    );
  }
}