import 'package:flutter/material.dart';
import 'package:bongalo/screens/otp_screen.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify', style: TextStyle(color: Colors.lightBlue[500])),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: OtpScreen(
        otpLength: 4,
        themeColor: Colors.black,
        titleColor: Colors.black,
      ),
    );
  }
}
