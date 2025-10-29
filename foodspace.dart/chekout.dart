import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class chekoutScr extends StatefulWidget {
  const chekoutScr({super.key});

  @override
  State<chekoutScr> createState() => _chekoutScrState();
}

String _selectedWay = 'Door delivrey';
String _selectedMethod = 'Card';
var name1 = "Farah Saleh";
var address1 = "No 15 jalaa street jdaidet artouz Damascus Syria";
var phone1 = "+963 945623597";

class _chekoutScrState extends State<chekoutScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Address details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                        ),
                        child: Text(
                          name1,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        phone1,
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        address1,
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Payment method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: 'Card',
                        groupValue: _selectedMethod,
                        onChanged: (value) {
                          setState(() {
                            _selectedMethod = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Card',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Bank account',
                        groupValue: _selectedMethod,
                        onChanged: (value) {
                          setState(() {
                            _selectedMethod = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Bank account',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Delivrey method",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                      leading: Radio<String>(
                        value: 'Door delivrey',
                        groupValue: _selectedWay,
                        onChanged: (value) {
                          setState(() {
                            _selectedWay = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Door delivrey',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                    ),
                    ListTile(
                      leading: Radio<String>(
                        value: 'Pick up',
                        groupValue: _selectedWay,
                        onChanged: (value) {
                          setState(() {
                            _selectedWay = value!;
                          });
                        },
                      ),
                      title: Text(
                        'Pick up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Total',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        '23.000',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff0000FF),
                      borderRadius: BorderRadius.circular(30)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Processed to payment",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
