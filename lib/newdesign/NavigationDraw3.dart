import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDraw3 extends StatefulWidget {
  const NavigationDraw3({super.key});

  @override
  State<NavigationDraw3> createState() => _NavigationDraw3State();
}

class _NavigationDraw3State extends State<NavigationDraw3> {

  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade800
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.center
              )
            ),
          ),
          SafeArea(
              child: Container(
                width: 200.0,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DrawerHeader(child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage("assets/images/desktop_wallpaper.jpg"),
                        ),
                        SizedBox(height: 10.0,),
                        Text(
                          "Eren Jager",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                          ),
                        )
                      ],
                    )
                    ),
                    Expanded(
                        child: ListView(
                          children: [
                            ListTile(
                              onTap: (){},
                              leading: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                             ListTile(
                              onTap: (){},
                              leading: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Profile",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                             ListTile(
                              onTap: (){},
                              leading: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Setting",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                             ListTile(
                              onTap: (){
                                 Navigator.pushNamed(context, "/cartpage");
                              },
                              leading: Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Cart",
                                style: TextStyle(color: Colors.white),
                              ),
                            ), ListTile(
                              onTap: (){

                              },
                              leading: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              title: Text(
                                "Logout",
                                style: TextStyle(color: Colors.white),
                              ),
                            )

                          ],
                        ))
                  ],
                ),
              )),
          
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              builder: (_, double val, __){

                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("3D Drawer Menu"),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Swipe right to open the menu"),
                          ElevatedButton(
                              onPressed: (){},
                              child: Text("Prees Me"))
                        ],
                      )

                    ),
                  ),
                ));
              }
          ),

          GestureDetector(
            onHorizontalDragUpdate: (e){
              if(e.delta.dx > 0){
                setState(() {
                  value = 1;
                });
              }else{
                setState(() {
                  value = 0;
                });
              }
            },


            // onTap: (){
            //   setState(() {
            //     value == 0 ? value = 1 : value = 0;
            //   });
            // },
          )
        ],
      ),
    );
  }
}
