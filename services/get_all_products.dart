import 'dart:convert';
import 'package:http/http.dart' as http;

import '../helper/api.dart';
import '../models/prodact_models.dart';

class AllProductsService {
  Future<List<Prodact>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: ('https://fakestoreapi.com/products'));
    List<Prodact> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        Prodact.fromJason(data[i]),
      );
    }
    return productList;
  }
}
