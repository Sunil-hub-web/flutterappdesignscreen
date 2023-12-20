
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/screens/home_screens.dart';

class MainScreen12 extends StatefulWidget {
  const MainScreen12({super.key});

  @override
  State<MainScreen12> createState() => _MainScreen12State();
}

class _MainScreen12State extends State<MainScreen12> {

  int _selectedIndex = 0;

  List _widgetsOptions = [
    HomeScreen(),
    Text("Tab 2",style: TextStyle(fontSize: 30),),
    Text("Tab 3",style: TextStyle(fontSize: 30),),
    Text("Tab 4",style: TextStyle(fontSize: 30),),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _widgetsOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        selectedItemColor: Color(0xFF146ABE),
        unselectedItemColor: Colors.black54,
        iconSize: 28,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
           BottomNavigationBarItem(
              icon: Icon(Icons.favorite),label: "Wishlist"),
           BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "Profile"),

        ],

      ),
    );
  }
}



