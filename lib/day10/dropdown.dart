import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownState();
}

class _DropdownState extends State<DropdownPage> {
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              value: dropdownSelect,
              hint: Text("Pilih Kategori Produk"),
              items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
                String value,
              ) {
                return DropdownMenuItem(value: value, child: Text(value));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  dropdownSelect = value;
                });
        
                // if (dropdownSelect != null) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(
                //       content: Text("Anda memilih kategori: $dropdownSelect"),
                //     ),
                //   );
                // }
              },
            ),
            Text(
                dropdownSelect == null
                    ? "Belum ada kategori yang dipilih"
                    : "Anda memilih kategori: $dropdownSelect",
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}