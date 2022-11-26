import 'package:apitest/TabbarCoffee/cappuccino.dart';
import 'package:apitest/TabbarCoffee/latte.dart';
import 'package:apitest/TabbarCoffee/mocha.dart';
import 'package:apitest/special_coffee_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:apitest/main.dart';

import 'TabbarCoffee/espresso.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {    
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }


  // void initState() {
  //   super.initState();
  //   Future.Delayed(Duration(seconds: 1)),then((value) => {
  //     FlutterNativeSplash.remove();
  //   });
  // }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 620,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.menu,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration (
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Find Your Best\nCoffee for you',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(bottom: 6.8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Find your coffee',
                        hintStyle: TextStyle(
                          color: Colors.grey[680],
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[680],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18  
                    ),
                    Container(
                      child: TabBar(
                        controller: tabController,
                        isScrollable: true,
                        indicator: CircleTabIndicator(color: Colors.deepOrangeAccent, radius: 3),
                        labelColor: Colors.deepOrangeAccent,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                        Tab(
                          text: "Cappucino",
                        ),
                        Tab(
                          text: "Espresso",
                        ),
                        Tab(  
                          text: "Latte",
                        ),
                        Tab(
                          text: "Mocha",
                        ),
                      ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 250,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Cappuccino(),
                      Espresso(),
                      Latte(),
                      Mocha(),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                  Text("Special For You",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,)
                  ,),
                  SizedBox(height: 16),
                ]
              ),
            ),
            SpecialCoffeeCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),    
    );
  }
}
  
class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset circleOffset = offset + Offset(configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
