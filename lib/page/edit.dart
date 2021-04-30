import 'package:flutter/material.dart';
import 'package:r/componant/drawer.dart';
import 'package:r/componant/rounded_button.dart';

import '../constants.dart';

//import'./pages/contant.dart';
class Edit extends StatefulWidget {
  @override
  _EditsState createState() => _EditsState();
}

class _EditsState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.teal,
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Row(
                children: <Widget>[
                  Container(
                      child: Text(
                    "First Name",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                      child: Text(
                    " enter first name",
                    style: TextStyle(color: Colors.black26),
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Last Name"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Email"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Mobile"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Blood Group"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Gender"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Date Of Birth"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Adress"),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              color: Colors.grey[350],
              height: 50,
              child: Text("Password"),
              alignment: Alignment.centerLeft,
            ),

            /*Firebase auth
             auth.signInWithEmailAndPassword(email,pass).then((credentials){


             });*/
          ],
        ),
      ),
    );
  }
}
