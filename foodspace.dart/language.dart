import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class languageScr extends StatefulWidget {
  @override
  State<languageScr> createState() => _languageScrState();
}

class _languageScrState extends State<languageScr> {
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
          "Language",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 500),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Select the language",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff0000FF),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "English",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Arabic",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
