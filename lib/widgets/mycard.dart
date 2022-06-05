import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //stack
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.red,
                  ),
                  Text("quantity"),
                ],
              ),
              Center(
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.network(
                      "https://3.imimg.com/data3/KQ/WH/MY-16577405/apple-amari-250x250.jpg"),
                ),
              ),
            ],
          ),
          const Text("description"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [Text("mrp"), Text("offer_price")],
          ),
          SizedBox(
            height: 30,
            width: 120,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.add), Text("Add Item")],
                ),
                onPressed: () {
                  setState(() {});
                }),
          ),
          const Text("type of delivery"),
          const Text("(expect delivery by)"),
        ],
      ),
    );
  }
}
