import 'package:flutter/material.dart';
import 'package:w6_practice/Ex-3/product.dart';
import 'package:w6_practice/Ex-3/product_card.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ProductsScreen(),
    ),
  );
}

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        backgroundColor: const Color.fromARGB(255, 249, 250, 251),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            ProductCard(product: Product.dart),
            ProductCard(product: Product.flutter),
            ProductCard(product: Product.firebase),
          ],
        ),
      ),
    );
  }
}