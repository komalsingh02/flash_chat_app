import 'package:chatapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatapp/screens/chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registrationScreen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late String email;
  late String password;
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
                height: 200.0,
                child: Image.asset('images/logo.jpg'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
                email = value;
              },
              decoration: kMessageTextFieldDecoration.copyWith(
                hintText: 'Password',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
                password = value;
              },
              decoration: kMessageTextFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     color: Colors.blueAccent,
            //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
            //     elevation: 5.0,
            //     child: MaterialButton(
            //       onPressed: () {
            //         //Implement registration functionality.
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: Text(
            //         'Register',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            RoundedButton(
                title: 'Register',
                colour: Colors.lightBlueAccent,
                onclick: () async {
                  try {
                    var newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                }
                // onClick: () async {
                //   setState(() {
                //     showSpinner = true;
                //   });
                //   try {
                //     var newUser = await _auth.createUserWithEmailAndPassword(
                //         email: email, password: password);
                //     if (newUser != null) {
                //       Navigator.pushNamed(context, ChatScreen.id);
                //     }
                //   } catch (e) {
                //     print(e);
                //   } finally {
                //     setState(() {
                //       showSpinner = false;
                //     });
                //   }
                //},
                ),
          ],
        ),
      ),
    );
  }
}
