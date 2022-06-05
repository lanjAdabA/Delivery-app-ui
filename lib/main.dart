import 'package:deliveryui/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const UserInterface(),
    );
  }
}

class UserInterface extends StatefulWidget {
  const UserInterface({Key? key}) : super(key: key);

  @override
  State<UserInterface> createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _children = [
    const UserHome(),
    const Center(
      child: Text("search"),
    ),
    const Center(
      child: Text("notification"),
    ),
    const Center(
      child: Text("cart"),
    ),
    const Center(
      child: Text("my account"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          // backgroundColor: Colors.red[900],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
                label: "home",
                backgroundColor: Color.fromARGB(255, 205, 191, 191)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 40,
                ),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.grey,
                  size: 40,
                ),
                label: "notification"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
                label: "cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.grey,
                  size: 40,
                ),
                label: "my account"),
          ]),
    );
  }
}
