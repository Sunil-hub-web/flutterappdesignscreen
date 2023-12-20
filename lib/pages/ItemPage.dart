import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterappdesignscreen/widgets/ItemAppBar.dart';
import 'package:flutterappdesignscreen/widgets/ItemBottomNavBar.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {

  List<Color> clrs = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.indigo
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              "assets/images/1.png",
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 25,
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 35,
                          bottom: 15,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Product Title",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4c53a5)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (BuildContext context, int index) {
                                return Icon(Icons.favorite,
                                    color: Color(0xFF4c53a5));
                              },
                              onRatingUpdate: (double value) {},
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(1),
                                  ),
                                  child: Text(
                                    "01",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Color(0xFF4c53a5)),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade400,
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(0, 3))
                                      ]),
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    size: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "This is More details description of the product You can write here more about the product. this is the lenhth description",
                          style:
                              TextStyle(fontSize: 17, color: Color(0xFF4c53a5)),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                "Size : ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4c53a5),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  for(int i = 5 ; i < 10; i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          spreadRadius: 2,
                                          blurRadius: 8
                                        )
                                      ]
                                    ),
                                    child: Text("$i".toString(),style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4c53a5)
                                    ),),
                                  )
                                ],
                              )
                            ],
                          )),
                       Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                "Color : ",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF4c53a5),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  for(int i = 0 ; i < 5; i++)
                                  Container(
                                    height: 30,
                                    width: 30,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          spreadRadius: 2,
                                          blurRadius: 8
                                        )
                                      ]
                                    ),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  ),
                )),
          )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}


