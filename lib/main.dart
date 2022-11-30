import 'package:flutter/material.dart';
import 'package:untitled1/screens/aboutScreen.dart';
import 'package:untitled1/screens/changeAddressScreen.dart';
import 'package:untitled1/screens/checkoutScreen.dart';
import 'package:untitled1/screens/dessertScreen.dart';
import 'package:untitled1/screens/inboxScreen.dart';
import 'package:untitled1/screens/menuScreen.dart';
import 'package:untitled1/screens/moreScreen.dart';
import 'package:untitled1/screens/myOrderScreen.dart';
import 'package:untitled1/screens/notificationScreen.dart';
import 'package:untitled1/screens/offerScreen.dart';
import 'package:untitled1/screens/paymentScreen.dart';
import 'package:untitled1/screens/profileScreen.dart';
import './screens/individualItem.dart';
import './screens/HomeScreen.dart';
import './screens/introScreen.dart';
import './screens/newPwScreen.dart';
import './screens/forgotPwScreen.dart';
import './screens/sentOTPScreen.dart';
import './screens/registerScreen.dart';
import './screens/landingScreen.dart';
import './screens/splashScreen.dart';
import './screens/loginScreen.dart';
import './const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: const SplashScreen(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        ForgotPwScreen.routeName: (context) => ForgotPwScreen(),
        SentOTPScreen.routeName: (context) => SentOTPScreen(),
        NewPwScreen.routeName: (context) => NewPwScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        DeltailItem.routeName: (context) => DeltailItem(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        InboxScreen.routeName: (context) => InboxScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),
        CheckoutScreen.routeName: (context) => CheckoutScreen(),
        ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
        DessertScreen.routeName: (context) => DessertScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        OfferScreen.routeName: (context) => OfferScreen(),
      },
    );
  }
}

