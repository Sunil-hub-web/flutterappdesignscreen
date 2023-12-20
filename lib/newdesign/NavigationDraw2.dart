import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDraw2 extends StatefulWidget {
  const NavigationDraw2({super.key});

  @override
  State<NavigationDraw2> createState() => _NavigationDraw2State();
}

class _NavigationDraw2State extends State<NavigationDraw2> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //key for scaffold, required to manually open/close drawer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text("Expansion Menu in Flutter"),
        ),
        drawer: Drawer(
          child: SafeArea(
              child: Column(
            children: [
              ExpansionTile(
                title: Text("Parent Category 1"),
                leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Child Category 1"),
                    leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Child Category 2"),
                    leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              ),
              ExpansionTile(
                title: Text("Parent Category 2"),
                leading: Icon(Icons.person),
                //add icon
                childrenPadding: EdgeInsets.only(left: 60),
                //children padding
                children: [
                  ListTile(
                    title: Text("Child Category 1"),
                    leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Child Category 2"),
                    leading: Icon(Icons.favorite),
                    onTap: () {
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              )
            ],
          )
          ),
        ),
        body: Container()
    );
  }
}

//   Drawer(
//   child: ListView(padding: EdgeInsets.zero, children: [
//     UserAccountsDrawerHeader(
//       accountName: Text("User Details"),
//       accountEmail: Text("example@gmail.com"),
//       currentAccountPicture: CircleAvatar(
//         child: ClipOval(
//           child: Image.asset(
//             "assets/images/desktop_wallpaper.jpg",
//             height: 90,
//             width: 90,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       decoration: BoxDecoration(
//           color: Colors.blue,
//           image: DecorationImage(
//               image: AssetImage(
//                 "assets/images/backimage.jpg",
//               ),
//               fit: BoxFit.cover)),
//     ),
//     // ExpansionTile(
//     //   title: Text('Categories'),
//     //   leading: Icon(Icons.view_list),
//     //   children: <Widget>[
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child:
//     //                   Card(child: Center(child: Text("Shalwar kameez"))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child: Card(child: Center(child: Text("Sherwani."))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child: Card(
//     //                   child: Center(child: Text("Sindhi Ajrak or Cap."))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 40,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child: Card(
//     //                   child: Center(
//     //                       child: Text("Punjabi kurta and tehmat."))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child:
//     //                   Card(child: Center(child: Text("Saraiki Turban"))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child:
//     //                   Card(child: Center(child: Text("Saraiki Kurta."))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child: Card(
//     //                   child: Center(child: Text("Peshawari Turban."))))),
//     //       onTap: () {},
//     //     ),
//     //     SizedBox(
//     //       height: 7,
//     //     ),
//     //     GestureDetector(
//     //       child: SizedBox(
//     //           width: 250,
//     //           height: 35,
//     //           child: Container(
//     //               decoration: BoxDecoration(
//     //                 color: Colors.black26,
//     //                 borderRadius: BorderRadius.circular(15),
//     //               ),
//     //               child:
//     //                   Card(child: Center(child: Text("Lehenga Choli"))))),
//     //       onTap: () {},
//     //     ),
//     //   ],
//     // ),
//   ]),
// );
// }
//}
