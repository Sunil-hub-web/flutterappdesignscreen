import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4c53a5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Dp Shop",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4c53a5)),
            ),
          ),
          Spacer(),
         badges.Badge(
           badgeStyle: badges.BadgeStyle(
             badgeColor: Colors.red,
             padding: EdgeInsets.all(7),
           ),
           badgeContent: Text("3",style: TextStyle(
             color: Colors.white
           ),),
           onTap: () {
            // Navigator.pushNamed(context, "cartPage");
           },
           child: InkWell(
             onTap: (){
                 Navigator.pushNamed(context, "cartPage");
             },
             child: Icon(Icons.shopping_bag_outlined,
             size: 30,color: Color(0xFF4c53a5) ,),
           ),
         )


         /* badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            showBadge: true,
            ignorePointer: false,
            onTap: () {},
            badgeContent: Icon(Icons.check, color: Colors.white, size: 10),
            badgeAnimation: badges.BadgeAnimation.rotation(
              animationDuration: Duration(seconds: 1),
              colorChangeAnimationDuration: Duration(seconds: 1),
              loopAnimation: false,
              curve: Curves.fastOutSlowIn,
              colorChangeAnimationCurve: Curves.easeInCubic,
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.square,
              badgeColor: Colors.blue,
              padding: EdgeInsets.all(5),
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(color: Colors.white, width: 2),
              borderGradient: badges.BadgeGradient.linear(
                  colors: [Colors.red, Colors.black]),
              badgeGradient: badges.BadgeGradient.linear(
                colors: [Colors.blue, Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              elevation: 0,
            ),
            child: Text('Badge'),
          )*/
        ],
      ),
    );
  }
}
