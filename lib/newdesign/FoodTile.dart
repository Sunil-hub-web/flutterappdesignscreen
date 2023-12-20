import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdesignscreen/newdesign/foodmodel.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatefulWidget {

  final Food food;
  final void Function()? onTop;

  FoodTile({super.key,
    required this.food,
    required this.onTop});

  @override
  State<FoodTile> createState() => _FoodTileState();
}

class _FoodTileState extends State<FoodTile> {

  List<Data> dataList = [
    Data(name: "Facebook", imageURL: 'assets/images/facebook_share.png', location: ''),
    Data(name: "Whatsapp", imageURL: 'assets/images/whatsapp_share.png', location: ''),
    // Data(name: "Whatsapp Business",imageURL: 'assets/images/whatsappbusiness_share.png'),
    Data(name: "Twitter", imageURL: 'assets/images/twitter_share.png', location: ''),
    Data(name: "More", imageURL: 'assets/images/more_share.png', location: ''),
  ];


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTop,
      child: Container(
        decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
       margin: EdgeInsets.only(left: 15),
       padding: EdgeInsets.all(25),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            widget.food.imagePath,
            height: 140,
          ),
          Text(
            widget.food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),

          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$' + widget.food.price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star,color: Colors.yellow.shade800,),
                    Text(widget.food.rating,style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}

class Data {
  String name;
  String imageURL;
  String location;

  Data({required this.name, required this.imageURL, required this.location});
}
