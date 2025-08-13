import 'package:flutter/material.dart';

class HalamanDaftar extends StatelessWidget {
  const HalamanDaftar({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.domisili,
  });
  final String name;
  final String email;
  final String phone;
  final String domisili;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirmation"), backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: Text(
              "Terima kasih, $name dari $domisili telah mendaftar.",
              style: TextStyle(fontFamily: "Poppins_Medium", fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
