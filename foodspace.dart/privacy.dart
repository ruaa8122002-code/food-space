import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class privacyScr extends StatefulWidget {
  @override
  State<privacyScr> createState() => _privacyScrState();
}

class _privacyScrState extends State<privacyScr> {
  bool? check = false;

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
          "Privacy Policy",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum unt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(fontSize: 22),
            ),
            margin: EdgeInsets.symmetric(horizontal: 40),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.red,
                ),
                Text(
                  "You are already agree",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
