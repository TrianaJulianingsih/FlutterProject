import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/checkbox.dart';
import 'package:ppkd_flutter_1/day10/datepicker.dart';
import 'package:ppkd_flutter_1/day10/dropdown.dart';
import 'package:ppkd_flutter_1/day10/switch.dart';
import 'package:ppkd_flutter_1/day10/timepicker.dart';
import 'package:ppkd_flutter_1/day10/tugas_8.dart';
// import 'package:ppkd_flutter_1/day10/tugas_7.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    SizedBox(),
    CheckBoxPage(),
    SwitchPage(),
    DropdownPage(),
    DatepickerPage(),
    TimepickerPage(),
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    // context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Notery',
              style: TextStyle(
                color: const Color.fromARGB(255, 1, 1, 244),
                fontSize: 24,
                fontFamily: "Lobster",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              context.push(TugasDelapan());
            },
          ),
          ListTile(
            leading: Icon(Icons.check_box_outlined),
            title: Text("Syarat & Ketentuan"),
            onTap: () {
              context.push(CheckBoxPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.switch_access_shortcut_add_rounded),
            title: Text("Mode Gelap"),
            onTap: () {
              context.push(SwitchPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_drop_down_outlined),
            title: Text("Pilih Kategori Produk"),
            onTap: () {
              context.push(DropdownPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.date_range_outlined),
            title: Text("Pilih Tanggal Lahir"),
            onTap: () {
              context.push(DatepickerPage());
            },
          ),
          ListTile(
            leading: Icon(Icons.timelapse_outlined),
            title: Text("Atur Pengingat"),
            onTap: () {
              context.push(TimepickerPage());
            },
          ),
        ],
      ),
    );
  }
}
