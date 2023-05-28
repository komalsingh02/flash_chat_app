import 'package:flutter/material.dart';
import 'package:chatapp/screens/welcome_screen.dart';

class RoundedButton extends StatelessWidget {
  // const RoundedButton({
  //   super.key,
  // });
  RoundedButton(
      {required this.title, required this.colour, required this.onclick});
  final Color colour;
  final String title;
  final VoidCallback onclick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onclick,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';

// class RoundedButton extends StatelessWidget {
//   RoundedButton({required this.text, required this.onClick});

//   final Function onClick;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: Material(
//         elevation: 5.0,
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(30.0),
//         child: MaterialButton(
//           onPressed: onClick,
//           minWidth: 200.0,
//           height: 42.0,
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
