import 'package:flutter/material.dart';
import 'package:project/pages/addproduct.dart';
import 'package:project/pages/editprofile.dart';
import 'package:project/pages/leavingpage.dart';
import 'package:project/pages/drawer.dart';
import 'package:project/pages/shared_preference.dart';
import 'package:project/pages/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: leavingpage());
        // home: const editprofile());
        // home: sharedpreference());
        // home: splashScreen());
        // home: selectProductpage());
        // home: addProductScreen());
        home: drawerScreen());
  }
}
