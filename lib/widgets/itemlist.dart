import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
                child: Image.network(
                    "https://m.media-amazon.com/images/I/71bNsWlkyeL._SL1500_.jpg"),
              ),
              const Text("description")
            ],
          ),
        ],
      ),
    );
  }
}
