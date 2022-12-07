

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/models/Food.dart';

class NetworkRequest{
  static const String url = "https://json-app-coffee.herokuapp.com/api/products";

  static List<Food> parseFood(String res) {
    var list = json.decode(res) as List<dynamic>;
    List<Food> foods = list.map((models) => Food.fromJson(models)).toList();
    return foods;
  }

  static Future<List<Food>> fetchFoods({int page = 1}) async {
    final resp = await http.get(Uri.parse('$url'));
    if(resp.statusCode == 200) {
      return compute(parseFood, resp.body);
    } else if(resp.statusCode == 404) {
      throw Exception("Not Found");
    } else {
      throw Exception("Cant get food");
    }
  }
}


