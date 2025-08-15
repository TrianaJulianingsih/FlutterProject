import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/tugas_7.dart';

class TugasDelapan extends StatefulWidget {
  const TugasDelapan({super.key});
  static const id = "/tugasDelapan";

  @override
  State<TugasDelapan> createState() => _TugasDelapanState();
}

class _TugasDelapanState extends State<TugasDelapan> {
  // bool appBar = true;
  bool isCheck = false;
  bool isCheckSwitch = false;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[Home(), About()];

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
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
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
