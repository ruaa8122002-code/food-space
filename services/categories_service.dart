import 'dart:convert';
import 'package:app11/helper/api.dart';
import 'package:app11/models/prodact_models.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<Prodact>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<Prodact> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        Prodact.fromJason(data[i]),
      );
    }
    return productList;
  }
}
