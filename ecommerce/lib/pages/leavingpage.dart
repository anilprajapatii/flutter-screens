import 'package:flutter/material.dart';

class leavingpage extends StatefulWidget {
  const leavingpage({super.key});

  @override
  State<leavingpage> createState() => _leavingpageState();
}

class _leavingpageState extends State<leavingpage> {
  _loginPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 120, 223),
      body: Column(
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Image.asset(
                  "assets/images/leaving.png",
                  height: 300,
                  width: 250,
                )),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(40, 10, 40, 0),
              padding: EdgeInsets.fromLTRB(45, 50, 40, 45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 223, 44, 44)
                          .withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: Offset(0, 3), // Offset
                    ),
                  ]),
              child: Column(
                children: [
                  Text("Oh no ! you are leaving...",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17)),
                  Text(
                    "Are you sure?",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 84, 231, 241),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                          onTap: _loginPressed,
                          child: const Text(
                            'Nah ! Just Kidding ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 0, 0),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 255, 255),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(255, 53, 238, 252))),
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                          onTap: _loginPressed,
                          child: const Text(
                            'Yes Log me out',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 0, 0),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
