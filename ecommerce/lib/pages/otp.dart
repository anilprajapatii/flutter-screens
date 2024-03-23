import 'package:flutter/material.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(125, 200, 0, 0),
              child: const Icon(
                Icons.phonelink_setup_sharp,
                color: Color.fromARGB(255, 223, 128, 240),
                size: 60,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250),
            child: Text(
              "Verification",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              "You will get a OTP via SMS",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(width: 300, child: TextField()),
          SizedBox(
            height: 30,
          ),
          Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 194, 134, 230),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.fromLTRB(125, 10, 125, 10),
              child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 0, 0),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ))),
        ],
      ),
    );
  }
}
