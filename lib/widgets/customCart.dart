import 'package:flutter/material.dart';
import '../utils/helper.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Helper.getAssetName("cart.png", "virtual"),
    );
  }
}
