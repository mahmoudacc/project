import 'package:flutter/material.dart';
import 'package:r/componant/drawer.dart';

//import'./pages/contant.dart';
class Updocs extends StatefulWidget {
  @override
  _UpdocssState createState() => _UpdocssState();
}

class _UpdocssState extends State<Updocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            ' upload_docs',
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
                child: Text('uploading',
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
