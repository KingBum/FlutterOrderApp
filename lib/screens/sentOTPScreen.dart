import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../utils/helper.dart';
import './newPwScreen.dart';

class SentOTPScreen extends StatelessWidget {
  const SentOTPScreen({Key? key}) : super(key: key);
  static const routeName = "/sentOTPScreen";
  bool get isInput => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'We have sent you an OTP to your Mobile',
              style: Helper.getTheme(context).headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please check your mobile number 070****323 continue to reset your password",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                OTPInputEnter(),
                OTPInputEnter(),
                OTPInputEnter(),
                OTPInputEnter(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(NewPwScreen.routeName);
                },
                child: Text("Next"),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't Recieve? "),
                Text(
                  "Click Here",
                  style: TextStyle(
                    color: AppColor.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}


class OTPInputEnter extends StatelessWidget {

  const OTPInputEnter({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: Visibility(
              visible: false,
              child: Text(
                "",
                style: TextStyle(fontSize: 45),
              ),
            ),
          ),
          SizedBox(
            width: 100.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 17, bottom: 5),
              child: TextField(
                maxLength: 1,
                decoration: InputDecoration(border: InputBorder.none, counterText: ''),
                style: TextStyle(fontSize: 40.0, height: 2.0, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}

}

