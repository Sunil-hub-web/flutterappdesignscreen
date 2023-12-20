
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/BottomNavigationBar123.dart';
import 'package:flutterappdesignscreen/BottomNavigationBarExample.dart';
import 'package:flutterappdesignscreen/BottomNavigationBarExample1.dart';
import 'package:flutterappdesignscreen/BottomNavigationBarExample2.dart';
import 'package:flutterappdesignscreen/NavigationExample.dart';
import 'package:flutterappdesignscreen/newdesign/cart_page.dart';
import 'package:flutterappdesignscreen/newdesign/intro_page.dart';
import 'package:flutterappdesignscreen/newdesign/menu_page.dart';
import 'package:flutterappdesignscreen/newdesign/shopmodel.dart';
import 'package:flutterappdesignscreen/pages/CartPage.dart';
import 'package:flutterappdesignscreen/pages/HomePage.dart';
import 'package:flutterappdesignscreen/pages/ItemPage.dart';
import 'package:flutterappdesignscreen/screens/main_screen12.dart';
import 'package:flutterappdesignscreen/screens/product_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MyApp()),
     );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: IntroPage(),
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPageDesign(),
      },
      // routes: {
      //   "/" : (context) => HomePage(),
      //   "cartPage" : (context) => const CartPage(),
      //   "itemPage" : (context) => ItemPage()
      //
      // },
    );
  }
}
