// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String description;
  final String quantity;
  final int mrp;
  final String vegOrNonveg;
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
      required this.img,
      required this.vegOrNonveg})
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
                    Stack(
                      children: [
                        Positioned(
                          // bottom: 0.2,
                          child: SizedBox(
                              height: 26,
                              width: 26,
                              child: Image.network(
                                widget.vegOrNonveg,
                              )),
                        ),
                      ],
                    ),
                    Text(
                      widget.quantity,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    )
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    radius: 75,

                    backgroundImage: NetworkImage(
                      widget.img,
                    ),
                    // child: Image.network(
                    //   widget.img,
                    // ),
                  ),
                ),
              ],
            ),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 2,
              softWrap: true,
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
                Text(" ${widget.offerprice}  RS")
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
            Text(
              widget.deliveryType,
            ),
            Text(
              widget.expectedDelivery,
              style: const TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
veg
https://openclipart.org/image/800px/304248

non veg
https://openclipart.org/image/800px/304247  
 */