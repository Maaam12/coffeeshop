import 'package:flutter/material.dart';

class SpecialCoffeeCard extends StatelessWidget {

  List<String> specialImages =[
    "images/specoff1.jpg",
    "images/specoff2.jpeg",
    "images/specoff3.jpeg"
  ];

  List<String> coffeeName = [
    "Caramel Macchiato ",
    "Turkish Coffee",
    "Cafe Cubanoi"
  ];

  List<String> ingredients = [
    "Ice, Caramel Sauce",
    "Turkish coffee, Sugar",
    "Ground Coffee, Water"
  ];

  List<String> price = ["5.00", "7.50", "9.00"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: specialImages.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (bontext, index){
      return Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(specialImages[index]),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName[index],
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      ingredients[index],
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                            r"$",
                            style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                          ),
                          Text(price[index],
                            style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent),
                          ),
                          ],
                        ),
                        SizedBox(width: 45,),
                        Container(
                          height: 30,
                          width: 30,
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 15,),
        ],
      );
    });
  }
}