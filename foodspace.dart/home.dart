import 'package:app11/foodspace.dart/cart.dart';
import 'package:app11/foodspace.dart/details.dart';
import 'package:app11/foodspace.dart/language.dart';
import 'package:app11/foodspace.dart/location.dart';
import 'package:app11/foodspace.dart/loginscreen.dart';
import 'package:app11/foodspace.dart/offers.dart';
import 'package:app11/foodspace.dart/orders.dart';
import 'package:app11/foodspace.dart/privacy.dart';
import 'package:app11/foodspace.dart/searchfailed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:app11/foodspace.dart/fav.dart';
import 'package:app11/foodspace.dart/profile.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class home extends StatefulWidget {
  home();
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedIndex = 0;
  List category = ["Food", "Snacks", "Drinks", "Sweets"];
  List<Widget> screens = [home2(), facScr(), profileScr()];
  List<String> titles = ["", "Favourite", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[selectedIndex],
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => cartSce()));
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.grey,
                )),
          ),
        ],
      ),
      body: screens[selectedIndex],
      drawer: Drawer(
        backgroundColor: Color(0xff0000FF).withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage('images/logo.png'),
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ordersScr()));
                      },
                      child: Text(
                        "Orders",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_offer_rounded,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => offersScr()));
                      },
                      child: Text(
                        "Offers and Promo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.privacy_tip,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => privacyScr()));
                      },
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => locationScr()));
                      },
                      child: Text(
                        "Location",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => languageScr()));
                      },
                      child: Text(
                        "Language",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => loginScr(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Out",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_right,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => loginScr(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Color(0xff0000FF),
          selectedIconTheme: IconThemeData(size: 35),
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ""),
          ]),
    );
  }
}

class home2 extends StatefulWidget {
  const home2({super.key});

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> with SingleTickerProviderStateMixin {
  List category = ["Food", "Snacks", "Drinks", "Sweets"];
  List<Map<String, dynamic>> food = [
    {
      "id": "1",
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.xO856j7yL63d2GlRSXODLwAAAA?pid=ImgDet&rs=1'),
      "name": "Salmon mix",
      "price": "1.900"
    },
    {"id": "2", "image": '2', "name": "vigge rice", "price": "900"},
    {"id": "3", "image": '3', "name": "Fried chicken", "price": "1.500"},
    {"id": "4", "image": '4', "name": "Fish ", "price": "1.000"},
    {"id": "5", "image": '5', "name": "Pizza", "price": "1.700"},
    {"id": "6", "image": '6', "name": "Beef steak", "price": "2.000"},
  ];
  List snacks = [
    {
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.xO856j7yL63d2GlRSXODLwAAAA?pid=ImgDet&rs=1'),
      "name": "Turky and chees rolls",
      "price": "400"
    },
    {"image": "2", "name": "Capsicum with cheese", "price": "500"},
    {"image": "3", "name": "Mozzarella sticks", "price": "700"},
    {"image": "4", "name": "Nuggets", "price": "600"},
    {"image": "5", "name": "Onione rings", "price": "300"},
    {"image": "6", "name": "Tuna salad", "price": "900"},
  ];
  List sweets = [
    {
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.JxZdtpnMewHYpxPRAXaXmgHaGT?pid=ImgDet&rs=1'),
      "name": "Tiramisu",
      "price": "1.100"
    },
    {"image": "2", "name": "cheesecake", "price": "900"},
    {"image": "3", "name": "Pudding", "price": "1.500"},
    {"image": "4", "name": "Ice cream", "price": "800"},
    {"image": "5", "name": "Chocolate cake", "price": "1.700"},
    {"image": "6", "name": "Maccherone", "price": "1.000"},
  ];
  List drinks = [
    {
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?pid=ImgDet&rs=1'),
      "name": "Coffe",
      "price": "100"
    },
    {"image": "2", "name": "Milkshake", "price": "150"},
    {"image": "3", "name": "Fruit juice", "price": "120"},
    {"image": "4", "name": "Coca cola", "price": "90"},
    {"image": "5", "name": "Tea", "price": "100"},
    {"image": "6", "name": "Ice coffe", "price": "140"},
  ];
  Color _color1 = Colors.black;
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "Welcome Here",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                "To Your FoodSpace",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Container(
                  width: 110,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xff0000FF),
                      borderRadius: BorderRadius.circular(30)),
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => searchScr(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(
                            color: Colors.white,
                            Icons.search,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              controller: tabController,
              dividerColor: Color(0xff0000FF),
              labelColor: Colors.grey,
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  text: "Food",
                ),
                Tab(
                  text: "Snacks",
                ),
                Tab(
                  text: "Sweets",
                ),
                Tab(
                  text: "Drinks",
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: food.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => detailsScr(
                                    // name: food[index]['name'],
                                    // price: food[index]['price'],
                                    ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                CircleAvatar(
                                    maxRadius: 85,
                                    child: Image.network(
                                      'https://th.bing.com/th/id/OIP.xO856j7yL63d2GlRSXODLwAAAA?pid=ImgDet&rs=1',
                                    )),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  food[index]['name'],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  food[index]['price'],
                                  style: TextStyle(
                                      color: Color(0xff0000FF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snacks.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Image.network(
                                  width: 170,
                                  height: 150,
                                  'https://th.bing.com/th/id/OIP.luvrLTSrpojeuKbqdnytwwHaFj?pid=ImgDet&rs=1',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40),
                                  child: Text(
                                    snacks[index]['name'],
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  snacks[index]['price'],
                                  style: TextStyle(
                                      color: Color(0xff0000FF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sweets.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Image.network(
                                  height: 140,
                                  width: 180,
                                  'https://th.bing.com/th/id/OIP.JxZdtpnMewHYpxPRAXaXmgHaGT?pid=ImgDet&rs=1',
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  sweets[index]['name'],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  sweets[index]['price'],
                                  style: TextStyle(
                                      color: Color(0xff0000FF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: drinks.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.all(15),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Image.network(
                                  height: 150,
                                  width: 180,
                                  'https://th.bing.com/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?pid=ImgDet&rs=1',
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  drinks[index]['name'],
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                  drinks[index]['price'],
                                  style: TextStyle(
                                      color: Color(0xff0000FF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
