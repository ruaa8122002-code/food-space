import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class offersScr extends StatelessWidget {
  const offersScr({super.key});

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
          "My Offers",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ohh snap! No offers yet",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You don't have any offers yet please check again",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
