import 'dart:convert';

import 'package:covid_app/model/WorldStats.dart';
import 'package:covid_app/service/utilities/app_urls.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  Future<WorldStats> getAllData() async {
    var res = await http.get(Uri.parse(AppUrl.worldStatesApi));
    var data = jsonDecode(res.body);

    if (res.statusCode == 200) {
      return WorldStats.fromJson(data);
    } else {
      throw Exception;
    }
  }
  Future<List<dynamic>> getCountries() async {
    var res = await http.get(Uri.parse(AppUrl.countriesList));
    var data = jsonDecode(res.body);

    if (res.statusCode == 200) {
      return data;
    } else {
      throw Exception;
    }
  }
}
