import 'package:flutter/material.dart';
// import 'mycard.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          const Text(
            " 1.   ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Column(
            children: const [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://m.media-amazon.com/images/I/71bNsWlkyeL._SL1500_.jpg"),
              ),
              Text("description")
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const SizedBox(
              width: 140,
              child: Text(
                  "more descriptions. more descriptions. more descriptions.")),
          SizedBox(
            height: 30,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // fixedSize: ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: const Size(40, 30),
                      padding: const EdgeInsets.only(left: 0.5),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.remove,
                    )),
                const Text("01"),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // fixedSize: ,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: const Size(40, 30),
                      padding: const EdgeInsets.only(left: 0.5),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: (const Color(0xFFFF9000)),
                // fixedSize: ,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.delete,
                    size: 40,
                  ),
                  Text(
                    "delete from cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: (10), color: Colors.grey),
                  )
                ],
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
