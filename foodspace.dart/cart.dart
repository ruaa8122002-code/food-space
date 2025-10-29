import 'package:app11/foodspace.dart/chekout.dart';
import 'package:app11/foodspace.dart/orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cartSce extends StatefulWidget {
  const cartSce({super.key});

  @override
  State<cartSce> createState() => _cartSceState();
}

var counter1 = 1;
var counter2 = 1;
var counter3 = 1;
var counter4 = 1;

class _cartSceState extends State<cartSce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Cart",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/OIP.hbbYoWfoNpX59MLgsvOWowHaLH?pid=ImgDet&rs=1'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Salmon mix',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '1.900',
                                style: TextStyle(
                                    color: Color(0xff0000FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff0000FF)),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter1--;
                                          });
                                        },
                                      ),
                                      Text(
                                        '$counter1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter1++;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.d1fde5c00058bd46c492d7cfa3c8c144?rik=g6f%2bbeDnv%2fjahQ&riu=http%3a%2f%2fzenandspice.com%2fwp-content%2fuploads%2f2017%2f02%2fturkey-roll-ups-3-757x1024.jpg&ehk=NvEwkYyOB6tK0NSmGr8akoZ3%2bw9VDBVJPYGndSdPMcM%3d&risl=&pid=ImgRaw&r=0'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Turky and chees rolls',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '400',
                                style: TextStyle(
                                    color: Color(0xff0000FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 85),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff0000FF)),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter2--;
                                          });
                                        },
                                      ),
                                      Text(
                                        '$counter2',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter2++;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.10adcd5c88f5354abd9015461d331c7e?rik=U1E6iM65xwrJig&pid=ImgRaw&r=0'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'cheesecake',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '900',
                                style: TextStyle(
                                    color: Color(0xff0000FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 85),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff0000FF)),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter3--;
                                          });
                                        },
                                      ),
                                      Text(
                                        '$counter3',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter3++;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          maxRadius: 40,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.7d1fab024debb7b6c717435515e947f8?rik=sV401BA6%2b7occQ&riu=http%3a%2f%2fimages.unsplash.com%2fphoto-1572490122747-3968b75cc699%3fixlib%3drb-1.2.1%26q%3d80%26fm%3djpg%26crop%3dentropy%26cs%3dtinysrgb%26w%3d1080%26fit%3dmax%26ixid%3deyJhcHBfaWQiOjEyMDd9&ehk=HG0ngCHdjS4vaSc19ltojNkpzvNKd17QtGChJwf1trc%3d&risl=&pid=ImgRaw&r=0'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Milkshake',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '150',
                                style: TextStyle(
                                    color: Color(0xff0000FF),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 85),
                                child: Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff0000FF)),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter4--;
                                          });
                                        },
                                      ),
                                      Text(
                                        '$counter4',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            counter4++;
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xff0000FF),
                      borderRadius: BorderRadius.circular(30)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chekoutScr()));
                    },
                    child: Text(
                      "Complete order",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ))
            ])));
  }
}
