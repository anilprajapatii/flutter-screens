import 'package:flutter/material.dart';

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  void _updateprofile() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 251, 252),
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Text("Edit Profile")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: AssetImage(
                    "assets/images/leaving.jpeg",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0, right: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name ',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email ID',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 84, 231, 241),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.fromLTRB(85, 10, 85, 10),
              child: GestureDetector(
                onTap: _updateprofile,
                child: const Text(
                  "Update Details",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 253, 253),
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1.5, color: Color.fromARGB(255, 2, 2, 2))),
              padding: EdgeInsets.fromLTRB(112, 10, 112, 10),
              child: GestureDetector(
                onTap: _updateprofile,
                child: const Text(
                  "Discard",
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 8, 8),
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
