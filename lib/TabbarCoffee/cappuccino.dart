import 'package:flutter/material.dart';

import '../coffee_detail_page.dart';

class Cappuccino extends StatelessWidget {

  List<String> images = [
    "images/cappuccino1.jpg",
    "images/cappuccino2.jpg",
    "images/cappuccino3.jpg",
    "images/cappuccino4.jpg",
  ];

  List<String> ingredients = [
    "With Milk",
    "With Cinnamon",
    "With Chocolate",
    "With Caramel",
  ];

  List<String> price = [
    "4.99",
    "5.99",
    "6.99",
    "7.99",
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailPage()));
        },
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 250,
                  width: 160,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container (
                        height: 135,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cappucino",
                              style: TextStyle(color: Colors.black),),
                            SizedBox(
                              height: 3,
                              ),
                            Text(
                              ingredients[index], 
                              style: TextStyle(color: Colors.black, fontSize: 11),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                  r'$',
                                  style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,),
                                ),
                                Text(
                                  "${price[index]}",
                                  style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,),
                                ),
                                  ],
                                ),
                                Container(
                              height: 38,
                              width: 38,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 28,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                  ), 
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ); 
          }),
      ),
    );
  }
}