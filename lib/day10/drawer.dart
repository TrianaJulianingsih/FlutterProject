import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/checkbox.dart';
import 'package:ppkd_flutter_1/day10/datepicker.dart';
import 'package:ppkd_flutter_1/day10/dropdown.dart';
import 'package:ppkd_flutter_1/day10/switch.dart';
import 'package:ppkd_flutter_1/day10/timepicker.dart';
import 'package:ppkd_flutter_1/day10/tugas_8.dart';
import 'package:ppkd_flutter_1/day14/list.dart';
import 'package:ppkd_flutter_1/day14/list_map.dart';
import 'package:ppkd_flutter_1/day14/model.dart';
import 'package:ppkd_flutter_1/day15/daftar_kelas.dart';
import 'package:ppkd_flutter_1/day16/views/pendaftaran_screen.dart';
import 'package:ppkd_flutter_1/day23/views/character.dart';
import 'package:ppkd_flutter_1/day9/tugas_6.dart';
// import 'package:ppkd_flutter_1/day10/tugas_7.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int _selectedIndexDrawer = 0;
  // static const List<Widget> _widgetOptions = <Widget>[
  //   SizedBox(),
  //   CheckBoxPage(),
  //   SwitchPage(),
  //   DropdownPage(),
  //   DatepickerPage(),
  //   TimepickerPage(),
  //   ListVoucher(),
  // ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/peta.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Travel',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 6, 6, 6),
                fontSize: 30,
                fontFamily: "Lobster",
                fontWeight: FontWeight.bold,
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
          ListTile(
            leading: Icon(Icons.list_outlined),
            title: Text("List Voucher And Ticket"),
            onTap: () {
              context.push(ListVoucher());
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined),
            title: Text("List Map Voucher And Ticket"),
            onTap: () {
              context.push(ListMap());
            },
          ),
          ListTile(
            leading: Icon(Icons.model_training_outlined),
            title: Text("Model"),
            onTap: () {
              context.push(Model());
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text("Formulir"),
            onTap: () {
              context.push(DaftarKelas());
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text("Pendaftaran Peserta Kelas"),
            onTap: () {
              context.push(PendaftaranScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.api),
            title: Text("API"),
            onTap: () {
              context.push(GetCharacterScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              context.push(TugasEnam());
            },
          ),
        ],
      ),
    );
  }
}
