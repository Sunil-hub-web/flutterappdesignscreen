import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDraw1 extends StatefulWidget {
  const NavigationDraw1({super.key});

  @override
  State<NavigationDraw1> createState() => _NavigationDraw1State();
}

class _NavigationDraw1State extends State<NavigationDraw1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("User Details"),
            accountEmail: Text("example@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/desktop_wallpaper.jpg",
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/backimage.jpg",
                  ),fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: Center(
                child: Text(
                  "8",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
                ),
              ),
            ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
