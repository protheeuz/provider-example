import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProductDetailScreen(this.title, this.price);
  static const routeName = '/product-detail';

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!

    // final product = Provider.of<Products>(context)
    //     .allproducts
    //     .firstWhere((prod_id) => prod_id == productId);
    // ...
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Text("INI ADALAH PAGE PRODUK ($productId)"),
      ),
    );
  }
}
