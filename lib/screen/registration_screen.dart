import 'package:flutter/material.dart';
import 'package:r/componant/rounded_button.dart';
import 'package:r/constants.dart';
import 'package:r/page/Task_Home.dart';
import 'package:r/screen/chat_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';



class RegistrationScreen extends StatefulWidget {
  static const String id ='registration_Screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();


}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  final FirebaseAuth_auth = FirebaseAuth.instance;

  Key get key => null;
  Future<void> registerUser() async {
    UserCredential userCredential =
    await FirebaseAuth_auth.createUserWithEmailAndPassword(
        email: email, password: password)
        .onError((error, stackTrace) {
      print('createUserWithEmailAndPassword Error: $error');
      return null;
    });

    if (userCredential?.user != null) {
      Navigator.pushNamed(context, Tasthome.id);
    }

    /*context,MaterialPageRoute(
      //builder: (context) => Tasthome.id
      Navigator.pushNamed(context, Tasthome.id);
      */
  }

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
            Hero(
              tag: 'logo',
              child: Container(
                height: 110,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,

              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => email = value,

              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) => password = value,
              autocorrect: false,

              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                title: 'register',
                color: Colors.blueAccent,
                onPressed: () async {
                  try {
                    final newUser = FirebaseAuth_auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if(newUser !=null){
                      Navigator.pushNamed(context, Tasthome.id);
                    }
                  }
                  catch(e){
                    print(e);
                  }
                },
                ),
          ],
        ),
      ),
    );
  }
}