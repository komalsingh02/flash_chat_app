import 'package:flutter/material.dart';
import 'package:chatapp/screens/login_screen.dart';
import 'package:chatapp/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatapp/rounded_button.dart';
// class WelcomeScreen extends StatefulWidget {
//   static const String id = 'welcomeScreen';
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0.1,
    );

    animation =
        CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);

    // animation = ColorTween(begin: Colors.grey, end: Colors.blueAccent)
    //     .animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print('${controller.value}\t${animation.value}');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(animation.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.jpg'),
                      height: animation.value * 250,
                    ),
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: animation.value * 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlue,
              onclick: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onclick: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     color: Colors.blueAccent,
            //     borderRadius: BorderRadius.circular(30.0),
            //     elevation: 5.0,
            //     child: MaterialButton(
            //       onPressed: () {
            //         //Go to registration screen.
            //         Navigator.pushNamed(context, RegistrationScreen.id);
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: Text(
            //         'Register',
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:chatapp/screens/login_screen.dart';
// import 'package:chatapp/screens/registration_screen.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// class WelcomeScreen extends StatefulWidget {
//   static const String id = 'welcomeScreen';
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Hero(
//                   tag: 'logo',
//                   child: Container(
//                     child: Image.asset('images/logo.jpg'),
//                     height: 60.0,
//                   ),
//                 ),
//                 Text(
//                   'Flash Chat',
//                   style: TextStyle(
//                     fontSize: 45.0,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 48.0,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0),
//               child: Material(
//                 elevation: 5.0,
//                 color: Colors.lightBlueAccent,
//                 borderRadius: BorderRadius.circular(30.0),
//                 child: MaterialButton(
//                   onPressed: () {
//                     //Go to login screen.
//                     Navigator.pushNamed(context, LoginScreen.id);
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: Text(
//                     'Log In',
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 16.0),
//               child: Material(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.circular(30.0),
//                 elevation: 5.0,
//                 child: MaterialButton(
//                   onPressed: () {
//                     //Go to registration screen.
//                     Navigator.pushNamed(context, RegistrationScreen.id);
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: Text(
//                     'Register',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
