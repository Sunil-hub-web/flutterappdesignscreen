import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({super.key});

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
              color: Color(0xFF4c53a5),
              size: 30,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4c53a5)),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,
              color: Color(0xFF4c53a5),
              size: 20,)
        ],
      ),
    );
  }
}
