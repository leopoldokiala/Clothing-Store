import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  bool? isFarorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFarorite = false,
  });

  void toggleFavorite() {
    isFarorite = !isFarorite!;
    notifyListeners();
  }
}
