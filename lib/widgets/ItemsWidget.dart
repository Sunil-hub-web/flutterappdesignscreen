import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatefulWidget {
  const ItemsWidget({super.key});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.66,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
          for(int i = 1; i < 8; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color(0xFF4c53a5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  Icon(Icons.favorite_border,color: Colors.red,)
                ],
              ),
              InkWell(
                onTap: (){
                   Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("assets/images/$i.png",
                  height: 120,
                  width: 120,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child:  Text("Product Title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                 color: Color(0xFF4c53a5)
                ),),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child:  Text("Description Wity Product",
                style: TextStyle(
                  fontSize: 16,
                 color: Color(0xFF4c53a5)
                ),),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$55",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFF4c53a5),),
                    ),
                     Icon(Icons.shopping_cart_checkout,color: Color(0xFF4c53a5),size: 25,
                     )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
