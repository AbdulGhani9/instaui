import 'package:flutter/material.dart';
import 'package:instaui/DetailPage.dart';
import 'package:instaui/product3.dart';

class ListTileThree extends StatelessWidget {
   ListTileThree({super.key, required this.productThree});
  final ProductThree productThree;
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading:  CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(productThree.imageUrl),
        ),
      
      title: Text(
        productThree.name,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        productThree.description,
        style: const TextStyle(color: const Color.fromARGB(255, 199, 198, 198)),
      ),
      trailing: Icon(Icons.camera_alt, color: const Color.fromARGB(110, 255, 255, 255),),

      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Detail(productThree: productThree);
        },));

      },
    );
  }
}