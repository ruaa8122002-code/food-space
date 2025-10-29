import 'dart:convert';
import 'package:app11/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> GetAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
