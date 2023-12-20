import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatefulWidget {
  const ItemBottomNavBar({super.key});

  @override
  State<ItemBottomNavBar> createState() => _ItemBottomNavBarState();
}

class _ItemBottomNavBarState extends State<ItemBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4c53a5)),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(CupertinoIcons.cart_badge_plus),
                label: Text(
                  "Add To Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF4c53a5)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 13,horizontal: 15)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                ),
              
            )
          ],
        ),
      ),
    );
  }
}
