import 'package:flutter/material.dart';

import '../widgets/mycard.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deals of the Week"),
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          mainAxisSpacing: 23,
          crossAxisSpacing: 23,
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            Container(
              height: 1000,
              color: Colors.red,
            ),
            Container(
              height: 1000,
              color: Colors.blue,
            ),
            Container(
              height: 1000,
              color: Colors.green,
            ),
            Container(
              height: 1000,
              color: Colors.purple,
            ),
            //MyCard(),
          ],
        ),
      ),
    );
  }
}
