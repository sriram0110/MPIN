import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MpinWidget extends StatefulWidget {
  final TextEditingController pinCodeController = TextEditingController();
  final currectPin = '123456';

  MpinWidget({super.key});

  @override
  State<MpinWidget> createState() => _MpinWidgetState();
}

class _MpinWidgetState extends State<MpinWidget> {
  var enteredPin = '';

  // void _verifyPin(String pin)
  // {
  //   if(pin == widget.currectPin)
  //   {

  //   }
  // }
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme( 
      width: 50,
      height: 50,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: Colors.blue),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: Colors.blue),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Pinput(
        controller: widget.pinCodeController,
        showCursor: false,
        obscureText: true,
        obscuringWidget: Container(
          width: 14,
          height: 14,
          decoration: const BoxDecoration( 
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
        useNativeKeyboard: true,
        keyboardType: TextInputType.number,
        length: 6,
        animationCurve: Curves.bounceIn,
        defaultPinTheme: defaultPinTheme,
        submittedPinTheme: submittedPinTheme,
        focusedPinTheme: widget.pinCodeController.text.length == 6
            ? submittedPinTheme
            : focusedPinTheme,
        onSubmitted: (pin) {
          setState(() {
            enteredPin = pin;
          });
        },
        onCompleted: (pin) => print(pin),
        validator: (pin) {
          if (pin == widget.currectPin) {
            return null;
          } else {
            return 'Incorrect pin';
          }
        },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      ),
    );
  }
}
