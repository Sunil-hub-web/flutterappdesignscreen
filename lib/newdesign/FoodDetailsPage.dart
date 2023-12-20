import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterappdesignscreen/newdesign/MyButton.dart';
import 'package:flutterappdesignscreen/newdesign/foodmodel.dart';
import 'package:flutterappdesignscreen/newdesign/shopmodel.dart';
import 'package:flutterappdesignscreen/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  int quentityCount = 0;

  void decrementQuantity() {
    setState(() {
      if(quentityCount > 0){
         quentityCount--;
      }

    });
  }

  void incrementQuantity() {
    setState(() {
      quentityCount++;
    });
  }

  void addTocart() {

    if(quentityCount > 0){

      final shop = context.read<Shop>();
      shop.addToCart(widget.food, quentityCount);

      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            backgroundColor: primaryColor,
            content: Text(
                "Successfully added to cart",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(
                      Icons.done,
                  color: Colors.white,))
            ],
          ));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: [
                    Image.asset(
                      widget.food.imagePath,
                      height: 200,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.food.rating,
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.food.name,
                      style: GoogleFonts.dmSerifDisplay(fontSize: 25),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
                          "industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type "
                          "and scrambled it to make a type specimen book. It has survived not only five centuries, but also the "
                          "leap into electronic",
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          height: 2),
                    ),
                  ],
                ),
              )
          ),
          Container(
            color: primaryColor,
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + widget.food.price,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quentityCount.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        ),
                      ],
                    )

                  ],
                ),
                SizedBox(height: 25,),
                MyButton(text: "Add To Cart", onTop: addTocart)
              ],
            ),
          )
        ],
      ),
    );
  }
}
