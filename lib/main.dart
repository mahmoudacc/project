import 'package:flutter/material.dart';
import 'package:r/page/Task_Home.dart';
import 'package:r/page/categories.dart';
import 'package:r/page/contact.dart';
import 'package:r/page/about.dart';
import 'package:r/page/edit.dart';
import 'package:r/page/updocs.dart';
import 'package:r/page/docs.dart';
import 'package:r/page/ICU.dart';
import 'package:r/screen/chat_screen.dart';
import 'package:r/screen/login_screen.dart';
import 'package:r/screen/registration_screen.dart';
import 'package:r/screen/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        /*
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        initialRoute: FirebaseAuth.instance.currentUser == null
            ? MyHomepage.id
            : Tasthome.id,
        */
        initialRoute: WelcomeScreen.id,

        routes: {
      Tasthome.id: (context) => Tasthome(),
      WelcomeScreen.id: (context) => WelcomeScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      ChatScreen.id: (context) => ChatScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      'categories': (context) {
        return Categories();
      },
      'contact': (context) {
        return Contact();
      },
      'about': (context) {
        return About();
      },
      'docs': (context) {
        return Docs();
      },
      'updocs': (context) {
        return Updocs();
      },
      'edit': (context) {
        return Edit();
      },
      'login_screen': (context) {
        return LoginScreen();
      },
      'homepage': (context) {
        return Tasthome();
      },
      'ICU': (context) {
        return ICU();
      },
    });
  }
}


class MyHomepage extends StatelessWidget {
  static const String id = "Homescreen";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    width: 100,
                    child: Image.asset("assets/images/chat.jpg"),
                  ),
                ),
                Text(
                  'Mychat',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(() {
              Navigator.of(context).pushNamed(LoginScreen.id);
            }, 'Login'),
            SizedBox(
              height: 10,
            ),
            CustomButton(() {
              Navigator.of(context).pushNamed(RegistrationScreen.id);
            }, 'Register')
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton(this.callback, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: Colors.black26,
        elevation: 6,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200,
          height: 45,
          child: Text(text),
        ),
      ),
    );
  }
}

