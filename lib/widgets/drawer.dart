import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://w7.pngwing.com/pngs/619/64/png-transparent-stewie-griffin-peter-griffin-character-others.png";
    return Drawer(
        child: Container(
      color: Color.fromARGB(255, 91, 0, 249),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color.fromARGB(255, 91, 0, 249)),
              accountName: Text("Harsh"),
              accountEmail: Text("harshpandey9324@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    imageurl), // Can make it box using image.network also
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text("Home",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text("Profile",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text("Email me",
                textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    ));
  }
}
