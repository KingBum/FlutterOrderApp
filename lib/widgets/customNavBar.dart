import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/HomeScreen.dart';
import '../screens/menuScreen.dart';
import '../screens/moreScreen.dart';
import '../screens/offerScreen.dart';
import '../screens/profileScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.home, required this.menu, required this.offer, required this.profile, required this.more}) : super(key: key);
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                width: Helper.getScreenWidth(context),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!home) {
                          Navigator.of(context)
                              .pushReplacementNamed(HomeScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          home
                              ? Image.asset(
                            Helper.getAssetName(
                                "home_filled.png", "virtual"),
                          )
                              : Image.asset(
                            Helper.getAssetName("home.png", "virtual"),
                          ),
                          home
                              ? Text("Home",
                              style: TextStyle(color: AppColor.orange))
                              : Text("Home"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!menu) {
                          Navigator.of(context)
                              .pushReplacementNamed(MenuScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          menu
                              ? Image.asset(
                            Helper.getAssetName(
                                "more_filled.png", "virtual"),
                          )
                              : Image.asset(
                            Helper.getAssetName("more.png", "virtual"),
                          ),
                          menu
                              ? Text("Menu",
                              style: TextStyle(color: AppColor.orange))
                              : Text("Menu"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!offer) {
                          Navigator.of(context)
                              .pushReplacementNamed(OfferScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          offer
                              ? Image.asset(
                            Helper.getAssetName(
                                "cart_filled.png", "virtual"),
                          )
                              : Image.asset(
                            Helper.getAssetName("cart.png", "virtual"),
                          ),
                          offer
                              ? Text("Cart",
                              style: TextStyle(color: AppColor.orange))
                              : Text("Cart"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!profile) {
                          Navigator.of(context)
                              .pushReplacementNamed(ProfileScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          profile
                              ? Image.asset(
                            Helper.getAssetName(
                                "user_filled.png", "virtual"),
                          )
                              : Image.asset(
                            Helper.getAssetName("user.png", "virtual"),
                          ),
                          profile
                              ? Text("Profile",
                              style: TextStyle(color: AppColor.orange))
                              : Text("Profile"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!more) {
                          Navigator.of(context)
                              .pushReplacementNamed(MoreScreen.routeName);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          more
                              ? Image.asset(
                            Helper.getAssetName(
                                "menu_filled.png", "virtual"),
                          )
                              : Image.asset(
                            Helper.getAssetName("menu.png", "virtual"),
                          ),
                          more
                              ? Text("More",
                              style: TextStyle(color: AppColor.orange))
                              : Text("More"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: SizedBox(
          //     height: 70,
          //     width: 70,
          //     child: FloatingActionButton(
          //       elevation: 0,
          //       backgroundColor: home ? AppColor.orange : AppColor.placeholder,
          //       onPressed: () {
          //         if (!home) {
          //           Navigator.of(context)
          //               .pushReplacementNamed(HomeScreen.routeName);
          //         }
          //       },
          //       child: Image.asset(
          //           Helper.getAssetName("home_white.png", "virtual")),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

