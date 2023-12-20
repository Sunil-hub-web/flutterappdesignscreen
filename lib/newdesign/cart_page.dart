import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/newdesign/MyButton.dart';
import 'package:flutterappdesignscreen/newdesign/foodmodel.dart';
import 'package:flutterappdesignscreen/newdesign/shopmodel.dart';
import 'package:flutterappdesignscreen/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPageDesign extends StatefulWidget {
  const CartPageDesign({super.key});

  @override
  State<CartPageDesign> createState() => _CartPageDesignState();
}

class _CartPageDesignState extends State<CartPageDesign> {
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: primaryColorprimaryColor,
              appBar: AppBar(
                title: const Text("My Cart"),
                elevation: 0,
                backgroundColor: primaryColorprimaryColor,
              ),
              body: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food food = value.cart[index];
                  final String foodName = food.name;
                  final String foodPrice = food.price;
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: ListTile(
                            title: Text(
                              foodName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              foodPrice,
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                removeFromCart(food, context);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: MyButton(text: "Pay Now", onTop: () {}),
                      )
                    ],
                  );
                },
              ),
            ));
  }
}
