import 'package:flutter/material.dart';
import 'package:r/screen/login_screen.dart';
import 'package:r/screen/registration_screen.dart';
import 'package:r/componant/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id ='welcome_Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag:'logo' ,
                  child:Container(
                    child: Image.asset('images/logo.png'),
                    height: 85,
                  ),
                ),
                Center(
                  child: Text(
                    'Hospital management system',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(title: 'login',
              color: Colors.lightBlueAccent,
              onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundedButton(title: 'register',
              color: Colors.blueAccent,
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },),
          ],
        ),
      ),
    );
  }
}


