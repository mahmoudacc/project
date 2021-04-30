import 'package:flutter/material.dart';
import 'package:r/componant/drawer.dart';

//import'./pages/contant.dart';
class About extends StatefulWidget {
  @override
  _AboutsState createState() => _AboutsState();
}

class _AboutsState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'About Us',
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
                width: 600,
                height: 200,
                child: Expanded(
                  child: Image.asset(
                    'images/Operating_theatre.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Text('Summary Of Hospital',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Text(
                        'The simplest method of installation is through the sublime text conso.',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center),
                    Text(
                        'The simplest method of installation is through the sublime text conso.',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
