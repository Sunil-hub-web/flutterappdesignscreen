import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterappdesignscreen/newdesign/FoodDetailsPage.dart';
import 'package:flutterappdesignscreen/newdesign/FoodTile.dart';
import 'package:flutterappdesignscreen/newdesign/MyButton.dart';
import 'package:flutterappdesignscreen/newdesign/NavigationDraw1.dart';
import 'package:flutterappdesignscreen/newdesign/NavigationDraw2.dart';
import 'package:flutterappdesignscreen/newdesign/NavigationDraw3.dart';
import 'package:flutterappdesignscreen/newdesign/NavigationDraw3.dart';
import 'package:flutterappdesignscreen/newdesign/NavigationDraw3.dart';
import 'package:flutterappdesignscreen/newdesign/foodmodel.dart';
import 'package:flutterappdesignscreen/newdesign/shopmodel.dart';
import 'package:flutterappdesignscreen/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagePath: "assets/images/sushi.png",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "23.00",
        imagePath: "assets/images/tuna.png",
        rating: "4.9")
  ];

  void navigaterToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: NavigationDraw3(),
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
          icon:Image.asset("assets/images/menu.png",height: 20,width: 20,)
          //
          // Icon(
          //   Icons.menu,
          //   color: Colors.grey.shade900,
          // ),
        ),
        title: Text(
          "Tokyo",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade900),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cartpage");
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    MyButton(text: "Redeem", onTop: () {})
                  ],
                ),
                Image.asset(
                  "assets/images/many_sushi.png",
                  height: 100,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search Here......."),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodMenu.length,
                      itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                        onTop: () {
                          navigaterToFoodDetails(index);
                        },
                      ),

                      /*{FoodTile(food: foodMenu[index]);},*/
                    ),
                  ))),
          SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/salmon_sushi.png",
                      height: 60,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "\$21.00",
                          style: TextStyle(color: Colors.grey.shade700),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
