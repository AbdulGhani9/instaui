import 'package:flutter/material.dart';
import 'package:instaui/Product.dart';

class ListTileHorizontal extends StatefulWidget {
  ListTileHorizontal({super.key, required this.product});
  Product product;

  @override
  State<ListTileHorizontal> createState() => _ListTileHorizontalState();
}

class _ListTileHorizontalState extends State<ListTileHorizontal> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height,:width)= size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: height*0.12,
            width: width*0.12,
            
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: const Color.fromARGB(255, 168, 37, 81)),
              image: DecorationImage(image: NetworkImage(widget.product.imageUrl))
          
            ),
          ),
        ),
        Text(widget.product.name, style: TextStyle(color: Colors.white),)
      ],
    );
  }
}