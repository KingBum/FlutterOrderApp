
import 'package:flutter/material.dart';
import '../screens/registerScreen.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../screens/loginScreen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  static const routeName = "/landingScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3FC979),
        body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 200.0, left: 120.0),
                // alignment: Alignment.center,
                child: Image.asset(
                  Helper.getAssetName("logo.png", "virtual"),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Helper.getAssetName("pasta.png", "real"),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.3,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const Flexible(
                        child: Text(
                          "Food Ordering APP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white, fontSize: 33.0
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                          },
                          child: const Text("Login"),

                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                            MaterialStateProperty.all(AppColor.orange),
                            shape: MaterialStateProperty.all(
                              const StadiumBorder(
                                side:
                                BorderSide(color: AppColor.orange, width: 1.5),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(RegisterScreen.routeName);
                          },
                          child: const Text("Create an Account"),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

