import 'package:flutter/material.dart';
import 'package:r/componant/drawer.dart';

//import'./pages/contant.dart';
class Contact extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Contact Us',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.teal,
        ),
        drawer: MyDrawer(),
        body: SafeArea(
            child: Column(children: <Widget>[
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
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                  size: 40.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('MOBILE',
                          style: TextStyle(fontSize: 15.0, color: Colors.teal)),
                      Text('(012)-345-6788', style: TextStyle(fontSize: 15.0)),
                      Text('(010)-542-9888', style: TextStyle(fontSize: 15.0)),
                      Text('(011)-258-6666', style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.teal,
                  size: 40.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('Email',
                          style: TextStyle(fontSize: 15.0, color: Colors.teal)),
                      Text('info@hospital.com',
                          style: TextStyle(fontSize: 15.0)),
                      Text('demo@hospital.com',
                          style: TextStyle(fontSize: 15.0)),
                      Text('support@hospital.com',
                          style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.teal,
                  size: 40.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('ADDRESS',
                          style: TextStyle(fontSize: 15.0, color: Colors.teal)),
                      Text('123\A,street,cairo',
                          style: TextStyle(fontSize: 15.0)),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.wb_cloudy_outlined,
                  color: Colors.teal,
                  size: 40.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('FACEBOOK',
                          style: TextStyle(fontSize: 15.0, color: Colors.teal)),
                      Text('http://www.facebook.com/',
                          style: TextStyle(fontSize: 15.0)),
                      Text('TWITTER',
                          style: TextStyle(fontSize: 15.0, color: Colors.teal)),
                      Text(
                        'http://www.tiwtter.com/',
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ])));
  }
}
