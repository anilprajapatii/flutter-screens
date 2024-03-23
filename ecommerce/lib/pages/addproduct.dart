import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class addProductScreen extends StatefulWidget {
  const addProductScreen({super.key});

  @override
  State<addProductScreen> createState() => _addProductScreenState();
}

class _addProductScreenState extends State<addProductScreen> {
  int countOfProduct = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Add Product"),
      ),
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Image.asset("assets/images/phoneImg.jpeg"),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.5,
              maxChildSize: 1,
              builder: (context, ScrollController) => SingleChildScrollView(
                    controller: ScrollController,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 228, 228),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 120),
                            width: 80,
                            child: Divider(
                              thickness: 1.7,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Text(
                                'Samsung Galaxy Z flip3 5G\n(Phantom Black, 128GB)',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(50, 8, 50, 8),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.3,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "₹51001",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Count",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 110,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(200.0),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 0.3,
                                      ),
                                    ),
                                    child: IconButton(
                                      iconSize: 20,
                                      icon: Icon(Icons.remove),
                                      onPressed: () {
                                        setState(() {
                                          if (countOfProduct > 0)
                                            countOfProduct--;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 170,
                                    padding: EdgeInsets.only(right: 75),
                                    child: Center(
                                      child: TextField(
                                        textAlign: TextAlign.end,
                                        style: TextStyle(fontSize: 20),
                                        decoration: InputDecoration(
                                          hintText: countOfProduct.toString(),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(200.0),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 0.3,
                                      ),
                                    ),
                                    child: IconButton(
                                      iconSize: 20,
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        setState(() {
                                          countOfProduct++;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(
                            "Specification",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Divider(
                            thickness: 0.7,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "General",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "In the box",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "Handset, Charger, USB Cable, Sim Tool, Guides",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Model Number",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "PB1V0005IN",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Model Name",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "G34 5G",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ColorIn the box",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "Ocean Green",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Browse Type",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "Smartphones",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "SIM Type",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.withOpacity(1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  width: 200,
                                  child: Text(
                                    "SIM Type",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.withOpacity(1),
                                    ),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                          )
                        ],
                      ),
                    ),
                  )),
        ],
      ),
    );
  }
}
