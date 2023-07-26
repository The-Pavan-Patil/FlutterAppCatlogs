import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
    backgroundColor: Colors.blue,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              //padding: EdgeInsets.zero,
              accountName: Text("Pavan Patil"),
              accountEmail: Text("thepavanpatil@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://photos.app.goo.gl/jD4QwWXQDXVt1hXi8")
              ),
            ),
          ),
          ListTile(
            title: Text("Home", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            leading: Icon(Icons.home_filled,color: Colors.white,),


          ),
          ListTile(
            title: Text("Profile", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
          ),
          ListTile(
            title: Text("Email me", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),
            leading: Icon(CupertinoIcons.mail,color: Colors.white,),
          )
        ]
      ),
    );
  }
}
