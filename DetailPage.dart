import 'package:flutter/material.dart';
import 'package:instaui/product3.dart';

class Detail extends StatelessWidget {
  Detail({super.key, required this.productThree});

  ProductThree productThree;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var Size(:height,:width)=size;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.black,
       
        leading:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 05,
            backgroundImage: NetworkImage(productThree.imageUrl),
          ),
        ),
        title: Text(productThree.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone, color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.video_call, color: Colors.white,),
          ),
        ],
        
        
      ),
      body: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                 
                  width: width*0.90,
                  height: height*0.07,
                  decoration: BoxDecoration(
                     color: const Color.fromARGB(255, 31, 29, 29),
                    borderRadius: BorderRadius.all(Radius.circular(50))
                  ),
                child: Center(
                  child: TextField(
                    
                    style: TextStyle(color: Colors.white, ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      
                      
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Message...", style: TextStyle(color: const Color.fromARGB(202, 139, 128, 128)),),
                      ),
                     
                    ),
                  ),
                )),
              ),
            )
          ]

      ),
      )
    );
  }
}