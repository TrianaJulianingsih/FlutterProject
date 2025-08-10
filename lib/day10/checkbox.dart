import 'package:flutter/material.dart';

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