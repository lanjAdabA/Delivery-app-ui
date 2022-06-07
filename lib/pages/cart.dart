import 'package:deliveryui/widgets/itemlist.dart';
import 'package:flutter/material.dart';

class PurchasedCart extends StatefulWidget {
  const PurchasedCart({Key? key}) : super(key: key);

  @override
  State<PurchasedCart> createState() => _PurchasedCartState();
}

class _PurchasedCartState extends State<PurchasedCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.shopping_bag_outlined),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: Icon(Icons.menu),
            )
          ],
          centerTitle: false,
          title: const Text("Your cart")),
      body: Column(
        children: const [ItemList()],
      ),
    );
  }
}
