import 'package:flutter/material.dart';
import 'package:instaui/BuilderTwo.dart';
import 'package:instaui/Product.dart';
import 'package:instaui/ProductTwo.dart';
import 'package:instaui/Thirdbuilder.dart';
import 'package:instaui/listviewbuilderhor.dart';
import 'package:instaui/product3.dart';

void main() {
  runApp(const MyApp());
}
const girl2="https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D";
const rizwan="https://media.gettyimages.com/id/1713411913/photo/hyderabad-india-mohammad-rizwan-of-pakistan-poses-for-a-portrait-ahead-of-the-icc-mens.jpg?s=612x612&w=0&k=20&c=HM9EO4HbEBa-tAs9CTFQHPNjagHCi_o6XqK6qVXdqAo=";
const girl3="https://plus.unsplash.com/premium_photo-1664541336692-e931d407ba88?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D";
const both="https://media.gettyimages.com/id/1243977832/photo/melbourne-australia-rohit-sharma-of-india-and-babar-azam-of-pakistan-poses-for-a-photo-ahead.jpg?s=612x612&w=0&k=20&c=FduQHSQi5IEOgzLMqQTDiI9Sz9WiHAA674QMGqRwHqU=";
const girl="https://images.unsplash.com/photo-1521566652839-697aa473761a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D";
const src =  "data:image/png;base64,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";
const beardman="https://plus.unsplash.com/premium_photo-1664536392896-cd1743f9c02c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww";
const Jack="https://media.istockphoto.com/id/2073254261/photo/an-adult-man-is-using-his-smartphone.webp?a=1&b=1&s=612x612&w=0&k=20&c=Hj-JBhwzX2ur8YBqnjPHFnmMyj5Kvo2hm9ai0U7CfKU=";
const gym="https://media.istockphoto.com/id/2128048740/photo/gym-sport-fitness-exercise-health-healthy-woman-treadmill-training-running-equipment-fit.webp?a=1&b=1&s=612x612&w=0&k=20&c=ypPkw-HsfgwaTW-Iy5bPGCrvuBN8CrdDJ_FMbZ8TifE=";
const freinds="https://media.istockphoto.com/id/2159352604/photo/multicultural-friends-smiling-at-camera-together-outside-happy-young-people-taking-selfie.webp?a=1&b=1&s=612x612&w=0&k=20&c=L7JIjw97sLZvm-9iEDf1_xWpRZZBgeLX8P80BcaIs5g=";
const mirrorGirl="https://media.istockphoto.com/id/2174137176/photo/happy-woman-enjoying-in-cozy-winter-morning-by-the-window.webp?a=1&b=1&s=612x612&w=0&k=20&c=dAwGVF_6M6t8zC0Rn3INgnNjrcdH_5HX3jh5prD36xA=";
const pretty="https://images.unsplash.com/photo-1445053023192-8d45cb66099d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww";
List<Product> products = [
  Product(imageUrl: girl2, name: "Oleg"),
  Product(imageUrl: girl3, name: "Frank"),
  Product(imageUrl: rizwan, name: "Rizwan"),
  Product(imageUrl: girl, name: "Joshua"),
  Product(imageUrl: beardman, name: "Calvar"),
  Product(imageUrl: Jack, name: "Jack"),
  Product(imageUrl: gym, name: "Eddy"),
  Product(imageUrl: freinds, name: "Emma"),
  Product(imageUrl: mirrorGirl, name: "Zara"),
  Product(imageUrl: pretty, name: "Enna"),
 
];

List<ProductThree> items = [
    ProductThree(imageUrl: girl2, name: "Oleg", description: "Today Im busy"),
    ProductThree(
        imageUrl: rizwan,
        name: "Rizwan",
        description: "Bhai ab jeteinge India se"),
    ProductThree(
        imageUrl: both,
        name: "Cricket Group",
        description: "Pakistan Zindabad"),
    ProductThree(imageUrl: girl, name: "Joshua", description: "Yes Im there"),
    ProductThree(
        imageUrl: beardman, name: "Calver", description: "I love beared"),
    ProductThree(imageUrl: Jack, name: "Jack", description: "Today is off"),
    ProductThree(
        imageUrl: gym, name: "Eddy", description: "gym maintains health"),
    ProductThree(
        imageUrl: freinds, name: "Richard", description: "We are on trip"),
    ProductThree(
        imageUrl: mirrorGirl,
        name: "Zara",
        description: "Mirror selfies are my fav"),
    ProductThree(imageUrl: pretty, name: "Enna", description: "Thanks"),
  ];


List <ProductItem> productItem=[
  ProductItem(smallImage: beardman, upperName: "Calvar", description: "London", largeImage: beardman, belowText: "Simplicity is the key ", time: "8 minutes ago"),
  ProductItem(smallImage: girl2, upperName: "Oleg", description: "", largeImage: girl2, belowText: "", time: "12 hours ago"),
  ProductItem(smallImage: rizwan, upperName: "Rizwan", description: "Peshawar, Pakistan", largeImage: rizwan, belowText: "", time: "2 weeks ago"),
  ProductItem(smallImage: both, upperName: "Cricket", description: "Melbourne", largeImage: both, belowText: "Wait is over!", time: "1 minutes ago"),
  ProductItem(smallImage: girl3, upperName: "Frank Floures", description: "Mountains", largeImage: girl3, belowText: "Enjoy Every moment", time: "8 minutes ago"),
  ProductItem(smallImage: girl, upperName: "Joshua", description: "NewYork", largeImage: girl, belowText: "Books are my fav", time: "3 days ago"),
  ProductItem(smallImage: Jack, upperName: "Jack", description: "Manchester", largeImage: Jack, belowText: "I love watching reels", time: "5 months ago"),
  
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
       var size = MediaQuery.sizeOf(context);
    var Size(:height,:width)= size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(238, 23, 22, 22),
        appBar: AppBar(
          elevation:20 ,
          backgroundColor: Colors.black,
          title: Text("Instagram", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.favorite, color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton( onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Thirdbuilder(productThree: items);
                },));

              } ,icon: Icon(Icons.messenger), color: Colors.white,),
            )

          ],
        ),
        body: Column(
          children: [
            Container(
              height: height*0.20,
              color: Colors.black,
              width: double.infinity,
            child: ListViewBuilderHor(product: products)),
           Expanded(child: 
           ListViewBuilderTwo(prdouctItem: productItem)
           )
          ],
        
        )
        
      );
        
  }
}
