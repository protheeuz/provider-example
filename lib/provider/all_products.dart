import 'package:flutter/material.dart';
import '../models/product.dart';
import 'dart:math';

class Products with ChangeNotifier {
  final List<Product> _allproducts = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get allproducts {
    return [..._allproducts];
  }

  // void addProducts() {
  //   _allproducts.add(prod_id);
  //   notifyListeners();
  // }
}
