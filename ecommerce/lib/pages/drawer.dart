import 'package:flutter/material.dart';

class drawerScreen extends StatefulWidget {
  const drawerScreen({super.key});

  @override
  State<drawerScreen> createState() => _drawerScreenState();
}

class _drawerScreenState extends State<drawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Product"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff96CBFF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 80, 10, 35),
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage:
                          AssetImage("assets/images/phoneImg.jpeg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 35, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Name : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "XYZ",
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Number : ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "879867667",
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 50),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        'My product'),
                    leading: const Icon(
                      Icons.now_widgets_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Divider(
                    thickness: 0.9,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        'My profile'),
                    leading: const Icon(
                      Icons.person_rounded,
                      color: Colors.black,
                    ),
                  ),
                  Divider(
                    thickness: 0.9,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        'Enquiry History'),
                    leading: const Icon(
                      Icons.history,
                      color: Colors.black,
                    ),
                  ),
                  Divider(
                    thickness: 0.9,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        'Subscription'),
                    leading: const Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                  ),
                  Divider(
                    thickness: 0.9,
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: const Text(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        'Contact Us'),
                    leading: const Icon(
                      Icons.headset_mic,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.copyright_sharp),
                Text(
                  " One Store",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
      body: Center(child: Text("Home")),
    );
  }
}
