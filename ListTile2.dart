import 'package:flutter/material.dart';
import 'package:instaui/ProductTwo.dart';

class ListtileTwo extends StatefulWidget {
  ListtileTwo({super.key, required this.productItem});
  final ProductItem productItem;
  @override
  State<ListtileTwo> createState() => _ListtileTwoState();
}

class _ListtileTwoState extends State<ListtileTwo> {
  Color iconColor = Colors.white;

  void changeIconColor() {
    setState(() {
      iconColor = iconColor == Colors.white ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage(widget.productItem.smallImage),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Text(
                          widget.productItem.upperName,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          widget.productItem.description,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
              PopupMenuButton(
                color: Colors.white,
                iconColor: Colors.white,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("Settings")),
                    PopupMenuItem(child: Text("Help")),
                  ];
                },
              )
            ],
          ),
          Container(
            height: height * 0.60,
            width: width,
            child: Image.network(
              widget.productItem.largeImage,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            iconColor = iconColor == Colors.white
                                ? Colors.red
                                : Colors.white;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: iconColor,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.save,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.productItem.upperName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                widget.productItem.belowText,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(9, 0, 0, 5),
                child: Text(
                  widget.productItem.time,
                  style: TextStyle(color: Colors.white, fontSize: 9),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
