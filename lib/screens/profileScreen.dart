import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: Helper.getScreenHeight(context),
              width: Helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: Helper.getTheme(context).headline5,
                          ),
                          Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Stack(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                Helper.getAssetName(
                                  "user.jpg",
                                  "real",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 20,
                                width: 80,
                                color: Colors.black.withOpacity(0.3),
                                child: Image.asset(Helper.getAssetName(
                                    "camera.png", "virtual")),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Helper.getAssetName("edit_filled.png", "virtual"),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Edit Profile",
                            style: TextStyle(color: AppColor.orange),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hi there Emilia!",
                        style: Helper.getTheme(context).headline4?.copyWith(
                              color: AppColor.primary,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Sign Out"),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF3FC979),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Change location",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            SizedBox(width: 145.0,),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xFF3FC979),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                            height: 2.0,
                            width: 1000,
                            child: ColoredBox(color: Color(0xE9ECEEFF)))
                      ]),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Color(0xFF3FC979),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Favorite Items",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            SizedBox(width: 160.0,),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xFF3FC979),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                            height: 2.0,
                            width: 1000,
                            child: ColoredBox(color: Color(0xE9ECEEFF)))
                      ]),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.history,
                              color: Color(0xFF3FC979),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Order History",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            SizedBox(width: 165.0,),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xFF3FC979),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                            height: 2.0,
                            width: 1000,
                            child: ColoredBox(color: Color(0xE9ECEEFF)))
                      ]),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.notifications_active,
                              color: Color(0xFF3FC979),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            SizedBox(width: 175.0, ),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xFF3FC979),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                            height: 2.0,
                            width: 1000,
                            child: ColoredBox(color: Color(0xE9ECEEFF)))
                      ]),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.output,
                              color: Color(0xFF3FC979),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Sign Out",
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.black),
                            ),
                            SizedBox(width: 210.0,),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Color(0xFF3FC979),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const SizedBox(
                            height: 2.0,
                            width: 1000,
                            child: ColoredBox(color: Color(0xE9ECEEFF)))
                      ]),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              home: false,
              more: false,
              profile: true,
              offer: false,
              menu: false,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomFormImput extends StatelessWidget {
  const CustomFormImput({
    Key? key,
    required String label,
    required String value,
    bool isPassword = false,
  })  : _label = label,
        _value = value,
        _isPassword = isPassword,
        super(key: key);

  final String _label;
  final String _value;
  final bool _isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.only(left: 40),
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: AppColor.placeholderBg,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: _label,
          contentPadding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
        ),
        obscureText: _isPassword,
        initialValue: _value,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
