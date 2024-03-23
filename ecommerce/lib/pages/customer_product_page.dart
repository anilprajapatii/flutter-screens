import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customerProductScreen extends StatefulWidget {
  const customerProductScreen({super.key});

  @override
  State<customerProductScreen> createState() => _customerProductScreenState();
}

class _customerProductScreenState extends State<customerProductScreen> {
  int countOfProduct = 0;
  int currentindex = 0;
  final PageController controller = PageController();
  List<String> productimgurl = [
    "assets/images/phoneImg1.webp",
    "assets/images/phoneImg2.webp",
    "assets/images/phoneImg3.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
      ),
      body: Stack(
        // fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentindex = index % productimgurl.length;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.jumpToPage(currentindex - 1);
                                if (currentindex == 0) {
                                  currentindex = productimgurl.length;
                                }
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 15,
                              ),
                            ),
                            SizedBox(
                              height: 250,
                              child: Image.asset(
                                productimgurl[index % productimgurl.length],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                controller.jumpToPage(currentindex + 1);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "SAMSUNG Galaxy Z Flip3 5G",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "₹45999",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(),
                        child: const Text(
                          "Description",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 300,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Text(
                              "The Galaxy Z Flip is constructed with an aluminum frame, and 30 μm (0.0012 in)-thick, with a plastic layer similar to the Galaxy Fold, manufactured by Samsung with materials from Schott AG, which is produced using an intensifying process to enhance its flexibility and durability, and injected with a special material up to an undisclosed depth to achieve a consistent hardness conventional Gorilla Glass.",
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.8,
              minChildSize: 0.3,
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
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                'Specification',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                            height: 250,
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
