import 'package:flutter/material.dart';
import 'package:instaui/ListTile2.dart';
import 'package:instaui/ProductTwo.dart';
import 'package:instaui/main.dart';

class ListViewBuilderTwo extends StatelessWidget {
 ListViewBuilderTwo({super.key, required this.prdouctItem});

  List<ProductItem> prdouctItem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: productItem.length,itemBuilder: (context, index) {
      return ListtileTwo(productItem: prdouctItem[index]);
    },);
  }
}