import 'package:flutter/material.dart';

import '../widgets/mycard.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  List<Map<String, dynamic>> data = [
    {
      "description": "apple",
      "quantity": 1,
      "mrp": 280,
      "img":
          "https://st.depositphotos.com/1020804/2370/i/600/depositphotos_23706663-stock-photo-red-apple-with-leaf-and.jpg",
      "offerprice": 230,
      "deliveryType": "cod",
      "expectedDelivery": "23rd june 2022"
    },
    {
      "description": "green apple",
      "quantity": 3,
      "mrp": 260,
      "img":
          "https://media.istockphoto.com/photos/green-apple-with-leaf-isolated-on-white-clipping-path-included-picture-id629734762?b=1&k=20&m=629734762&s=170667a&w=0&h=-JTO_KaiODRi-5i8p54XBAxqMzfijkrUPaIjxBtRRfA=",
      "offerprice": 240,
      "deliveryType": "cod",
      "expectedDelivery": "23rd june 2022"
    },
    {
      "description": "banana",
      "quantity": 1,
      "mrp": 80,
      "img": "https://www.wiffens.com/content/uploads/bananas-cavendish-1.jpeg",
      "offerprice": 50,
      "deliveryType": "cod",
      "expectedDelivery": "23rd june 2022"
    },
    {
      "description": "pine apple",
      "quantity": 4,
      "mrp": 80,
      "img": "https://m.media-amazon.com/images/I/71bNsWlkyeL._SL1500_.jpg",
      "offerprice": 60,
      "deliveryType": "cod",
      "expectedDelivery": "23rd june 2022"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Deals of the Week"),
        ),
        body: SingleChildScrollView(
          child: GridView.builder(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  //mainAxisExtent: 400,
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4),
              itemBuilder: (c, i) {
                return MyCard(
                  description: data[i]["description"],
                  deliveryType: data[i]["deliveryType"],
                  expectedDelivery: data[i]["expectedDelivery"],
                  quantity: data[i]["quantity"],
                  mrp: data[i]["mrp"],
                  offerprice: data[i]["offerprice"],
                  img: data[i]["img"],
                );
              }),

          /*   MyCard(
              description: "tom",
              deliveryType: "deliveryType",
              expectedDelivery: "expectedDelivery",
              quantity: 23,
              mrp: 23,
              offerprice: 23)), */
        ));
  }
}
