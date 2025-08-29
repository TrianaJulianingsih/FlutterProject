import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day25/views/home.dart';
import 'package:ppkd_flutter_1/day25/views/profile.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});
  static const id = "/buttomNav";

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  // bool appBar = true;

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileAPIScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Dashbord"), backgroundColor: Colors.blue),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // activeIcon: Icon(Icons.abc_outlined),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 64, 0, 255),
        onTap: (value) {
          // print(value);
          // print("Nilai SelecetedIndex Before : $_selectedIndex");

          // print("Nilai BotNav : $value");
          setState(() {
            _selectedIndex = value;
          });
          // print("Nilai SelecetedIndex After: $_selectedIndex");
        },
        // onTap: _onItemTapped,
      ),
    );
  }
}
