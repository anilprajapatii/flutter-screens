import 'package:flutter/material.dart';

class selectProductpage extends StatefulWidget {
  const selectProductpage({super.key});

  @override
  State<selectProductpage> createState() => _selectProductpageState();
}

class _selectProductpageState extends State<selectProductpage> {
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
            DrawerHeader(child: Text("Select")),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Text("selectttttttttt"),
    );
  }
}
