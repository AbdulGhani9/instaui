import 'package:flutter/material.dart';
import 'package:instaui/Product.dart';
import 'package:instaui/listtile.dart';

class ListViewBuilderHor extends StatelessWidget {
  ListViewBuilderHor({super.key, required this.product});
  List<Product> product;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ListTileHorizontal(product: product[index]);
      },
    );
  }
}
