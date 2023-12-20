import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/widgets/CartAppBar.dart';
import 'package:flutterappdesignscreen/widgets/CartBottomNavBar.dart';

import '../widgets/CartItemSamples.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
              decoration: BoxDecoration(
                color: Color(0xFFEDecf2),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)
                )
            ),
            child: Column(children: [
              CartItemSamples(),

              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4c53a5),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.add,color: Colors.white,),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Text(
                            "Add Coupone Code",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color(0xFF4c53a5)),
                          ),
                    )
                  ],
                ),
              )
            ],),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
