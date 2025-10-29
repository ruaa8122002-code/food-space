import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class cardScr extends StatefulWidget {
  const cardScr({super.key});

  @override
  State<cardScr> createState() => _cardScrState();
}

class _cardScrState extends State<cardScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'New Trend',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, i) {
            return CardCustom();
          }),
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.none,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20,
                offset: Offset(0, 10),
                color: Colors.grey.withOpacity(.2))
          ]),
          width: 150,
          height: 220,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'HandBag LV',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(r'$2200'),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 50,
          child: Image.network(
            'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
            height: 100,
          ),
        ),
      ],
    );
  }
}
