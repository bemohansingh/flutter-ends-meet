import 'dart:convert';

import 'package:endsmeet/api/api_client.dart';
import 'package:endsmeet/api/route/ApiPath.dart';
import 'dart:async';

import 'package:endsmeet/models/category.dart';

class CategoryApiProvider {
  final ApiClient apiClient;
  CategoryApiProvider({required this.apiClient});

  Future<dynamic> getCategories() async {
    List<Category> categories = [];
    var response = await apiClient.httpGet(ApiPath.category.getCategoryList);
    var responseJson = json.decode(response);
    if(responseJson["status"] == "success") {
      var allData = responseJson["data"] as List<dynamic>;
      allData.forEach((data) {
        var category = Category.fromJson(data);
        categories.add(category);
      });
    }
    return categories;
  }
}