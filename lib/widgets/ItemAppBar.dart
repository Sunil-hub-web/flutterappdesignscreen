import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatefulWidget {
  const ItemAppBar({super.key});

  @override
  State<ItemAppBar> createState() => _ItemAppBarState();
}

class _ItemAppBarState extends State<ItemAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xFF4c53a5),
              size: 30,
            ),
          ),
          SizedBox(width: 20,),
          Text(
            "Product: ",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4c53a5)),
          ),
          Spacer(),
          Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
        ],
      ),
    );
  }
}
