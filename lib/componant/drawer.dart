import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              FirebaseAuth.instance.currentUser == null
                  ? "not login"
                  : FirebaseAuth.instance.currentUser.displayName ?? '',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
                FirebaseAuth.instance.currentUser == null
                    ? ""
                    : FirebaseAuth.instance.currentUser.email,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              //image: DecorationImage(
              //image: NetworkImage("http://english.ahram.org.eg/Media/News/2018/6/28/2018-636657556817569234-756.jpg"), fit: BoxFit.cover)),
              //image: AssetImage("images/1.jpg"),
              //fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: Icon(Icons.home, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('homepage');
            },
          ),
          ListTile(
            title: Text(
              "Edit Profile",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: Icon(Icons.edit, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('edit');
            },
          ),
          ListTile(
            title: Text(
              "docs",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: Icon(Icons.calendar_today_rounded, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('docs');
            },
          ),
          ListTile(
            title: Text(
              "Inbox",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: Icon(Icons.forward_to_inbox, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('chat_screen');
            },
          ),
          ListTile(
            title: Text(
              "Upload Documents",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            leading: Icon(Icons.file_upload, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('updocs');
            },
          ),
          ListTile(
            title: Text("Departments",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            leading: Icon(Icons.insert_drive_file, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          ListTile(
            title: Text("About Us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            leading: Icon(Icons.info, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('about');
            },
          ),
          ListTile(
            title: Text("Contact Us",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            leading: Icon(Icons.mail_rounded, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('contact');
            },
          ),
          ListTile(
            title: Text("Log Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            leading: Icon(Icons.logout, color: Colors.teal),
            //trailing: Icon(Icons.hot_tub),
            //subtitle: Text("mmnn"),
            //isThreeLine: true,
            dense: true,
            onLongPress: () {
              print("long press");
            },
            onTap: () {
              Navigator.of(context).pushNamed('login_screen');
            },
          ),
        ],
      ),
    );
  }
}
