import 'package:firstproject/firstscreen.dart';
import 'package:firstproject/product.dart';
import 'package:firstproject/scndScreen.dart';
import 'package:flutter/material.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({ Key? key }) : super(key: key);

  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  @override
  Widget build(BuildContext context) {
     return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Scnd Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScndScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("First Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Firstscreen()));
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text("Dynamic List Screen"),
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => DynamicList()));
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Product Screen"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text("API Products Screen"),
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => ApiProducts()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text("Song App Screen"),
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SongApp()));
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.notifications),
          //   title: Text("Signup Screen"),
          //   onTap: (){
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
          //   },
          // ),
        ],
      )
    );
  }
}