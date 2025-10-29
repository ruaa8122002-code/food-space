import 'package:app11/foodspace.dart/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ordersScr extends StatelessWidget {
  const ordersScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
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
          "Orders",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 150,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No orders yet',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Hit the blue button down below to create an order ",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xff0000FF),
                    borderRadius: BorderRadius.circular(30)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Text(
                    "Start ordering",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
