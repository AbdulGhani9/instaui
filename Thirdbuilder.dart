import 'package:flutter/material.dart';
import 'package:instaui/ListTile3.dart';
import 'package:instaui/ProductTwo.dart';
import 'package:instaui/main.dart';
import 'package:instaui/product3.dart';


class Thirdbuilder extends StatefulWidget {
  Thirdbuilder({super.key, required this.productThree});

 List <ProductThree> productThree;

  @override
  State<Thirdbuilder> createState() => _ThirdbuilderState();
}

class _ThirdbuilderState extends State<Thirdbuilder> {
  late TextEditingController _controller ;
  @override
  void initState() {
    // TODO: implement initState
  _controller=TextEditingController();
    filteredItems = widget.productThree;
    _controller.addListener(filterNames);
  }

  @override
  void dispose() {
    _controller.dispose();
  }

  List<ProductThree> filteredItems = [];

  void filterNames() {
    setState(() {
      String query = _controller.text.toLowerCase();
      filteredItems = widget.productThree
          .where(
            (element) => element.name.toLowerCase().contains(query),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width)= size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: kToolbarHeight,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,

            )),
        title: Text(
          "ghanisheikh87",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.note_alt_outlined,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 5,),
          SizedBox(
            width: width*0.85 ,
            height: height*0.08,
            child: TextFormField(
              onChanged: (value) {
                return filterNames();
              },
              style: TextStyle(color: Colors.white),
              controller: _controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Search Names",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 13, 71, 161))),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 14, 73, 161))
                        )
              ),
            ),
          ),

           Expanded(
              child: filteredItems.isEmpty
                  ? const Center(
                      child: Text(
                        'No contact found',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return ListTileThree(productThree: filteredItems[index]);
                      },
                    ),
           )
        ],
      ),
    );
  }
}
