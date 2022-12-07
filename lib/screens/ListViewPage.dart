import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../models/Food.dart';

import '../const/colors.dart';
import '../utils/helper.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  static const routeName = "/listViewPage";

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Food> postList = [] ;

  Future<List<Food>> getFoodData ()async{
    final resposne = await http.get(Uri.parse('https://json-app-coffee.herokuapp.com/api/products')) ;
    var data = jsonDecode(resposne.body.toString());
    if(resposne.statusCode == 200){
      postList.clear();
      for(Map i in data){
        postList.add(Food.fromJson(i));
      }
      return postList ;
    }else {
      return postList ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: getFoodData(),
                builder: (context, snapshot) {
                  if(!snapshot.hasData){
                    return Text("Loading,,,");
                  }else {
                    return ListView.builder(itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          width: 200,
                          height: MediaQuery.of(context).size.height/2.5,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.0) //                 <--- border radius here
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.radio_button_checked,
                                      color: AppColor.orange,
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: AppColor.secondary,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: double.infinity,
                                    height: 160,
                                    child: Image.network(postList[index].img.toString()),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Text(
                                  postList[index].title.toString(),
                                  style: Helper.getTheme(context)
                                      .headline4
                                      ?.copyWith(color: AppColor.primary, fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$'+ postList[index].price.toString(),
                                      style: Helper.getTheme(context)
                                          .headline4
                                          ?.copyWith(color: AppColor.orange, fontSize: 24),
                                    ),
                                    SizedBox(width: 50),
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: AppColor.orange,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  }
                },
              )
            ),
          ],
        ),);
  }
}
