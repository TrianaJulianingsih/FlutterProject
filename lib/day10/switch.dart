import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchPage> {
  bool isCheckSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mode Gelap"), backgroundColor: Colors.blue),
      drawer: DrawerMenu(),
      body: Container(
        color: isCheckSwitch == true
            ? const Color.fromARGB(255, 24, 1, 73)
            : const Color.fromARGB(255, 200, 206, 255),
        child: Center(
          child: Column(
            children: [
              Text("Aktifkan Mode Gelap"),
              Switch(
                activeThumbImage: AssetImage("assets/images/jiso.jpg"),
                activeColor: Colors.red,
                value: isCheckSwitch,
                onChanged: (value) {
                  setState(() {
                    isCheckSwitch = value;
                  });
                },
              ),
              Text(
                isCheckSwitch == true
                    ? "Mode Gelap Aktif"
                    : "Mode Terang Aktif",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
