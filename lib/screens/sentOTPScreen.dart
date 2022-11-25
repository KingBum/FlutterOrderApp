import 'package:flutter/material.dart';

class SentOTPScreen extends StatelessWidget {
  const SentOTPScreen({Key? key}) : super(key: key);
  static const routeName = "/sentOTPScreen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Sent OTP"),
      ),
    );
  }
}
