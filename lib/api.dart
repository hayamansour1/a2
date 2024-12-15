
import 'dart:convert';

import 'package:http/http.dart' as http;
import './models/categories.dart';

class Api {
  String link ='https://www.themealdb.com/api';

getData()async{
  var uri = Uri.parse(link);
  var response = await http.get(uri);

  var responseJson = json.decode(response.body);

  for (var element in responseJson["data"]) {
    Categories.add(Categories.fromJson(element));
  }
  print(Categories.length);
}
}