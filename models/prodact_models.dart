import 'package:flutter/foundation.dart';

class Prodact {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  Prodact(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory Prodact.fromJason(jsonData) {
    return Prodact(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        category: jsonData['category'],
        image: jsonData['image'],
        rating: RatingModel.fromJason(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJason(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
