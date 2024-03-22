// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:project/pages/shared_preference.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class splashScreen extends StatefulWidget {
//   const splashScreen({super.key});

//   @override
//   State<splashScreen> createState() => _splashScreenState();
// }

// class _splashScreenState extends State<splashScreen> {
//   String stringValue;
//   @override
//   void initState() {
//     getStringValuesSF();
//     super.initState();
//   }

//   getStringValuesSF() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     stringValue = prefs.getString('string') ?? "";
//     Timer(const Duration(seconds: 2), () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => sharedpreference()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Text(
//         stringValue!,
//         style: TextStyle(fontSize: 30),
//       )),
//     );
//   }
// }
