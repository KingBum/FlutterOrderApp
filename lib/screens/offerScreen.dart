import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);
  static const routeName = "/offerScreen";

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                height: Helper.getScreenHeight(context),
                width: Helper.getScreenWidth(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Cart",
                              style: Helper.getTheme(context).headline5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [Text("Find discounts, Offer special")],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              width: Helper.getScreenWidth(context) * 0.4,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Pending Items")),
                            ),
                            SizedBox(width: 30,),
                            SizedBox(
                              height: 30,
                              width: Helper.getScreenWidth(context) * 0.4,
                              child: ElevatedButton(
                                  onPressed: () {}, child: Text("Ongoing")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("breakfast.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Cafe de Noires",
                        price: "32",
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("western2.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Isso",
                        price: "32",
                      ),
                      OfferCard(
                        image: Image.asset(
                          Helper.getAssetName("coffee3.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Cafe Beans",
                        price: "32",
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar( home: false, more: false, profile: false, offer: true, menu: false,

            ),
          )
        ],
      ),
    );
  }
}

class OfferCard extends StatefulWidget {
  const OfferCard({
    Key? key,
    required String name,
    required String price,
    required Image image,
  })  : _image = image,
        _name = name,
        _price = price,
        super(key: key);

  final String _name;
  final String _price;
  final Image _image;

  @override
  State<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  @override
  Widget build(BuildContext context) {
    int _counter = 3;
    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }
    void _decrementCounter() {
      setState(() {
        _counter--;
      });
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: Container(
        alignment: Alignment.center,
        height: Helper.getScreenHeight(context)/5,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.all(
              Radius.circular(10.0) //                 <--- border radius here
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(height: 50, width: 50, child: widget._image),
                      Column(
                        children: [
                          Text(
                            widget._name,
                            style: Helper.getTheme(context)
                                .headline4
                                ?.copyWith(color: AppColor.primary),
                          ),
                          Text(
                            "\$${widget._price}/pack",
                            style: Helper.getTheme(context)
                                .headline4
                                ?.copyWith(color: AppColor.secondary),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.remove_circle_outline,
                        ), onPressed: (){_decrementCounter();},
                      ),
                      Text(
                        '$_counter',
                        style: TextStyle(
                          color: AppColor
                              .orange,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_circle_outline,
                        ), onPressed: (){_incrementCounter();},
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 0.2, // thickness of the line
                indent: 20, // empty space to the leading edge of divider.
                endIndent: 20, // empty space to the trailing edge of the divider.
                color: Colors.black, // The color to use when painting the line.
                height: 20, // The divider's height extent.
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Remove",
                    style: Helper.getTheme(context)
                        .headline4
                        ?.copyWith(color: AppColor.orange),
                  ),
                  Text(
                    "",
                    style: Helper.getTheme(context)
                        .headline4
                        ?.copyWith(color: AppColor.primary),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

