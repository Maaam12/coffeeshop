import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailPage extends StatelessWidget {

  // List<String> images = [
  //   "images/tyler-nix-nwdtkFzDfPY-unsplash.jpg",
  //   "images/newcappuccino.jpg",
  //   "images/newcoffee.jpg",
  //   "images/nicholas-grande-Hd36cpebWbQ-unsplash.jpg",
  // ];

  // List<String> ingredients = [
  //   "With Milk",
  //   "With Cinnamon",
  //   "With Chocolate",
  //   "With Caramel",
  // ];  

  // List<String> price = [
  //   "4.99",
  //   "5.99",
  //   "6.99",
  //   "7.99",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 440,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/cappuccino1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: BlurryContainer(
                        padding: EdgeInsets.all(20),
                        height: 140,
                        blur: 20,
                        width: 340,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cappuccino",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "With Oat Milk",
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "images/star.svg",
                                      height: 20,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "(210)",
                                      style: TextStyle(color: Colors.grey[350]),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 42,
                                      width: 42,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "images/coffee-beans.svg",
                                            color: Colors.white,
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Coffee",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(8)),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 42,
                                      width: 42,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "images/water-drop.svg",
                                            color: Colors.white,
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            "Milk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(8)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 37,
                                  width: 120,
                                  child: Center(
                                      child: Text(
                                        "Medium Roasted",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrangeAccent,
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                        style: TextStyle(color: Color(0xff919296), fontSize: 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: ['S', 'M', 'L'].map((e) => ElevatedButton(
                      //       onPressed: () {},
                      //       child: SizedBox(
                      //         width: 50,
                      //         height: 40,
                      //         child: Center(
                      //           child: Text(
                      //             e,
                      //             style: TextStyle(
                      //                 color: sizeSelect == e ? Get.theme.secondaryHeaderColor : Colors.black,
                      //                 fontSize: 18,
                      //                 fontWeight: FontWeight.bold),
                      //           ),
                      //         ),
                      //       ),
                      //       style: ElevatedButton.styleFrom(
                      //           primary: sizeSelect == 0
                      //               ? Colors.deepOrangeAccent
                      //               : Colors.white,
                      //           side: BorderSide(
                      //               color: Colors.deepOrangeAccent, width: 2),
                      //           shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(8))),
                      //     )).toList(),
                      //     )
                      //   ),
                      Row(
                        children: [
                          Container(
                            height: 37,
                            width: 97,
                            child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      ),
                                )),
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.deepOrangeAccent,)),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            height: 37,
                            width: 97,
                            child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                      color: Color(0xff919296),
                                      fontSize: 18,
                                      ),
                                )),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Container(
                            height: 37,
                            width: 97,
                            child: Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                      color: Color(0xff919296),
                                      fontSize: 18,
                                      ),
                                )),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    r'$',
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent, fontSize: 21),
                                  ),
                                  Text(
                                    " 4.20",
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent, fontSize: 21),
                                  )
                                ],
                              )
                            ],
                          ),
                          // ignore: deprecated_member_use
                          ButtonTheme(
                            minWidth: 200,
                            height: 50,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {},
                              color: Colors.deepOrangeAccent,
                              child: Text(
                                "Buy Now",
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
