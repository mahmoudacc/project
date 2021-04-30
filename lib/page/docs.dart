import 'package:flutter/material.dart';
import 'package:r/componant/drawer.dart';

//import'./pages/contant.dart';
class Docs extends StatefulWidget {
  @override
  _DocssState createState() => _DocssState();
}

class _DocssState extends State<Docs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'docs',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.teal,
        ),
        drawer: MyDrawer(),
        body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                child: Text('docs',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ));
  }
}
