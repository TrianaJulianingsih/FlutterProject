import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/checkbox.dart';
import 'package:ppkd_flutter_1/day10/datepicker.dart';
import 'package:ppkd_flutter_1/day10/dropdown.dart';
import 'package:ppkd_flutter_1/day10/switch.dart';
import 'package:ppkd_flutter_1/day10/timepicker.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  // final bool? appBar;
  static const id = "/home";

  @override
  State<Home> createState() => _TugasTujuhState();
}

class _TugasTujuhState extends State<Home> {
  // bool appBar = true;
  bool isCheck = false;
  bool isCheckSwitch = false;
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SizedBox(),
    CheckBoxPage(appBar: false),
    SwitchPage(),
    DropdownPage(),
    DatepickerPage(),
    TimepickerPage(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashbord"), backgroundColor: Colors.blue),
      body: _widgetOptions[_selectedIndexDrawer],
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.check_box_outlined),
              title: Text("Syarat & Ketentuan"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_access_shortcut_add_rounded),
              title: Text("Mode Gelap"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_outlined),
              title: Text("Pilih Kategori Produk"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.date_range_outlined),
              title: Text("Pilih Tanggal Lahir"),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.timelapse_outlined),
              title: Text("Atur Pengingat"),
              onTap: () {
                onItemTap(5);
              },
            ),
          ],
        ),
      ),
      // body: Container(
      //   height: 300,
      //   width: 300,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(width: 2, color: Colors.black),
      //   ),
      //   child: Column(
      //     children: [
      //       Row(
      //         children: [
      //           Checkbox(
      //             activeColor: Colors.red,
      //             value: isCheck,
      //             onChanged: (value) {
      //               setState(() {
      //                 isCheck = value!;
      //               });
      //             },
      //           ),
      //           Text(isCheck == true ? "Setuju" : "Tidak Setuju"),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Switch(
      //             activeColor: Colors.red,
      //             value: isCheckSwitch,
      //             onChanged: (value) {
      //               setState(() {
      //                 isCheckSwitch = value;
      //               });
      //             },
      //           ),
      //           Text(isCheckSwitch == true ? "Hidup" : "Tidak Hidup"),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}