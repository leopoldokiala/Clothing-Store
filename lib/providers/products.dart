import 'package:flutter/material.dart';

import '../models/product.dart';
import '../data/dummy_data.dart';

class Products with ChangeNotifier {
  final List<Product> _items = dummyProduct;

  List<Product> get items {
    return [..._items];
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
