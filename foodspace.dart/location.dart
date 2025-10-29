import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class locationScr extends StatelessWidget {
  const locationScr({super.key});

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
          "Location",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Image.asset("images/Rectangle.png")],
        ),
      ),
    );
  }
}
