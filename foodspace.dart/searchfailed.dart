import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class searchScr extends StatefulWidget {
  const searchScr({super.key});

  @override
  State<searchScr> createState() => _searchScrState();
}

class _searchScrState extends State<searchScr> {
  List<Map<String, dynamic>> _allItems = [
    {
      "id": "1",
      "image": Image.asset('images/figner.png'),
      "name": "Salmon mix",
      "price": "1.900"
    },
    {
      "id": "2",
      "image": Image.asset('images/logo.png'),
      "name": "vigge rice",
      "price": "900"
    },
    {
      "id": "3",
      "image": Image.asset('images/logo.png'),
      "name": "Fried chicken",
      "price": "1.500"
    },
    {
      "id": "4",
      "image": Image.asset('images/logo.png'),
      "name": "Fish ",
      "price": "1.000"
    },
    {
      "id": "5",
      "image": Image.asset('images/logo.png'),
      "name": "Pizza",
      "price": "1.700"
    },
    {
      "id": "6",
      "image": Image.asset('images/logo.png'),
      "name": "Beef steak",
      "price": "2.000"
    },
    {
      "id": "7",
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.xO856j7yL63d2GlRSXODLwAAAA?pid=ImgDet&rs=1'),
      "name": "Turky and chees rolls",
      "price": "400"
    },
    {"id": "8", "image": "2", "name": "Capsicum with cheese", "price": "500"},
    {"id": "9", "image": "3", "name": "Mozzarella sticks", "price": "700"},
    {"id": "10", "image": "4", "name": "Nuggets", "price": "600"},
    {"id": "11", "image": "5", "name": "Onione rings", "price": "300"},
    {"id": "12", "image": "6", "name": "Tuna salad", "price": "900"},
    {
      "id": "13",
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.JxZdtpnMewHYpxPRAXaXmgHaGT?pid=ImgDet&rs=1'),
      "name": "Tiramisu",
      "price": "1.100"
    },
    {"id": "14", "image": "2", "name": "cheesecake", "price": "900"},
    {"id": "15", "image": "3", "name": "Pudding", "price": "1.500"},
    {"id": "16", "image": "4", "name": "Ice cream", "price": "800"},
    {"id": "17", "image": "5", "name": "Chocolate cake", "price": "1.700"},
    {"id": "18", "image": "6", "name": "Maccherone", "price": "1.000"},
    {
      "id": "19",
      "image": Image.network(
          'https://th.bing.com/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?pid=ImgDet&rs=1'),
      "name": "Coffe",
      "price": "100"
    },
    {"id": "20", "image": "2", "name": "Milkshake", "price": "150"},
    {"id": "21", "image": "3", "name": "Fruit juice", "price": "120"},
    {"id": "22", "image": "4", "name": "Coca cola", "price": "90"},
    {"id": "23", "image": "5", "name": "Tea", "price": "100"},
    {"id": "24", "image": "6", "name": "Ice coffe", "price": "140"},
  ];
  List<Map<String, dynamic>> _foundItems = [];
  @override
  void initState() {
    super.initState();
    _foundItems = _allItems;
  }

  void _runFilter(String enteredKayword) {
    List<Map<String, dynamic>> _results = [];
    if (enteredKayword.isEmpty) {
      _results = _allItems;
    } else {
      _results = _allItems
          .where((item) =>
              item["name"].toLowerCase().contains(enteredKayword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundItems = _results;
    });
  }

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
          "Search here",
          style: TextStyle(color: Colors.black, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              cursorColor: Colors.white,
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundItems.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundItems[index]["ID"]),
                  color: Colors.blue,
                  elevation: 4,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundItems[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    title: Text(
                      _foundItems[index]["name"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "${_foundItems[index]["price"].toString()} SYP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
