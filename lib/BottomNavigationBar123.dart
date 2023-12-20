import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/BottomNavigationBarExample1.dart';
import 'package:flutterappdesignscreen/BottomNavigationBarExample2.dart';
import 'package:flutterappdesignscreen/pages/HomePage.dart';
import 'package:flutterappdesignscreen/screens/product_screens.dart';
import 'package:flutterappdesignscreen/screens/products_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class BottomNavigationBar123 extends StatefulWidget {
  const BottomNavigationBar123({super.key});

  @override
  State<BottomNavigationBar123> createState() => _BottomNavigationBar123State();
}

class _BottomNavigationBar123State extends State<BottomNavigationBar123> {

  late PersistentTabController _controller;
   late bool _hideNavBar;

  List<Widget> _buildScreens() {
      return [
        const HomePage(),
        const ProductScreen(),
        const ProductWidgets(),
        const BottomNavigationBarExample1(),
        const BottomNavigationBarExample2(),
      ];

}


 List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: Colors.deepPurple,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.explore),
          title: ("Explore"),
          activeColorPrimary: Colors.deepPurple,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.add, color: Colors.white),
          activeColorPrimary: Colors.deepPurple,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.email),
          title: ("Inbox"),
          activeColorPrimary: Colors.deepPurple,
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_bag),
          title: ("Shop"),
          activeColorPrimary: Colors.deepPurple,
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }


  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
    _hideNavBar = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Navigation Bar Demo")),
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("This is the Drawer"),
              ],
            ),
          ),
        ),
        body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    ),
      );
  }
}
