// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String description;
  final int quantity;
  final int mrp;
  final String img;
  final int offerprice;
  final String deliveryType;
  final String expectedDelivery;

  const MyCard(
      {Key? key,
      required this.description,
      required this.deliveryType,
      required this.expectedDelivery,
      required this.quantity,
      required this.mrp,
      required this.offerprice,
      required this.img})
      : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //stack
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.check_box_outline_blank_rounded,
                      color: Colors.green,
                    ),
                    Text(widget.quantity.toString())
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Image.network(widget.img),
                  ),
                ),
              ],
            ),
            Text(
              widget.description,
              maxLines: 2,
            ),

            // Text(item_name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  " ${widget.mrp}   RS.",
                  style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(" " + widget.offerprice.toString() + "  RS")
              ],
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
            Text(widget.deliveryType),
            Text(widget.expectedDelivery.toString()),
          ],
        ),
      ),
    );
  }
}
