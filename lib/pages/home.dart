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
      "description": "bora",
      "quantity": "1 plate",
      "mrp": 50,
      "img":
          "http://binotagichakhum.weebly.com/uploads/6/3/9/0/63907723/published/bora.jpeg?1495535458",
      "offerprice": 40,
      "deliveryType": "pre-pay only",
      "expectedDelivery": "delivery within 1hr",
      "vegOrNonveg": "https://openclipart.org/image/800px/304248"
    },
    {
      "description": "yerum bora ",
      "quantity": "6 half pieces",
      "mrp": 30,
      "img": "https://i.ytimg.com/vi/1zXoVCnrVKc/maxresdefault.jpg",
      "offerprice": 25,
      "deliveryType": "cod available",
      "expectedDelivery": "delivery within 1hr",
      "vegOrNonveg": "https://openclipart.org/image/800px/304247"
    },
    {
      "description": "paknam",
      "quantity": "4 pieces",
      "mrp": 20,
      "img": "https://singju.com/wp-content/uploads/2020/10/lafu-tharo.jpg",
      "offerprice": 15,
      "deliveryType": "cod available",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304247"
    },
    {
      "description": "singju",
      "quantity": "1 plate",
      "mrp": 20,
      "img":
          "https://qph.fs.quoracdn.net/main-qimg-229874c02cce4b98d7e7b0a3897efd3e-lq",
      "offerprice": 15,
      "deliveryType": "cod",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304248"
    },
    {
      "description": "mimi singju",
      "quantity": "1 plate",
      "mrp": 20,
      "img": "https://pbs.twimg.com/media/EUCpkdsXsAEFB4O.jpg",
      "offerprice": 15,
      "deliveryType": "cod available",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304247"
    },
    {
      "description": "kilichana",
      "quantity": "1 plate",
      "mrp": 20,
      "img":
          "http://4.bp.blogspot.com/-Igpb63Wpexc/VVW-BqY7Q0I/AAAAAAAAADY/ySruG2eImcY/s1600/DSCN0081.JPG",
      "offerprice": 15,
      "deliveryType": "cod",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304248"
    },
    {
      "description": "pakoura",
      "quantity": "1 plate",
      "mrp": 20,
      "img": "https://i.ytimg.com/vi/ePQIoQ_OQNE/maxresdefault.jpg",
      "offerprice": 15,
      "deliveryType": "cod available",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304248"
    },
    {
      "description": "Alu chop",
      "quantity": "3 plate",
      "mrp": 15,
      "img":
          "https://gallery.thelongestwayhome.com/img/s1/v56/p1088391754-3.jpg",
      "offerprice": 10,
      "deliveryType": "cod",
      "expectedDelivery": "delivery within half an hour",
      "vegOrNonveg": "https://openclipart.org/image/800px/304248"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Deals of the Week"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              //mainAxisExtent: 400,
              crossAxisCount: 2,
              childAspectRatio: 3 / 4),
          itemBuilder: (context, index) {
            return MyCard(
              description: data[index]["description"],
              deliveryType: data[index]["deliveryType"],
              expectedDelivery: data[index]["expectedDelivery"],
              quantity: data[index]["quantity"],
              mrp: data[index]["mrp"],
              offerprice: data[index]["offerprice"],
              img: data[index]["img"],
              vegOrNonveg: data[index]["vegOrNonveg"],
            );
          }),

      /*   MyCard(
              description: "tom",
              deliveryType: "deliveryType",
              expectedDelivery: "expectedDelivery",
              quantity: 23,
              mrp: 23,
              offerprice: 23)), */
    );
  }
}
