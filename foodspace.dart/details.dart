import 'package:app11/foodspace.dart/chekout.dart';
import 'package:app11/foodspace.dart/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class detailsScr extends StatefulWidget {
  // var name;
  // var price;
  // detailsScr({required this.name, required this.price});
  @override
  State<detailsScr> createState() => _detailsScrState();
}

class _detailsScrState extends State<detailsScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Details",
          style: TextStyle(
              color: Color(0xff0000FF),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                color: Colors.red,
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                  maxRadius: 110,
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.xO856j7yL63d2GlRSXODLwAAAA?pid=ImgDet&rs=1',
                  )),
              SizedBox(
                height: 40,
              ),
              Text(
                'Salmon mix',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                '1.900',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0000FF)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Delivery info',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Return policy',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff0000FF)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Add to card",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
