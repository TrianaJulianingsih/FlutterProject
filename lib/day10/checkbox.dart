import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';


class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key, this.appBar});
  final bool? appBar;
  @override
  State<CheckBoxPage> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxPage> {
  bool appBar = true;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Syarat & Ketentuan"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Saya menyetujui semua persyaratan yang berlaku"),
          Row(
            children: [
              Checkbox(
                activeColor: Colors.red,
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text("Saya menyetujui semua persyaratan yang berlaku"),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              isCheck == true
                  ? "Lanjutkan pendaftaran diperbolehkan"
                  : "Anda belum bisa melanjutkan",
            ),
          ),
              Text(
                isCheck == true
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
              ),
            ],
          ),
        ],
      ),
    );
  }
}


