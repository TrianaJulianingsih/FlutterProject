import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  // final bool? appBar;
  static const id = "/homeScreen";

  @override
  State<HomeScreen> createState() => _TugasTujuhState();
}

class _TugasTujuhState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Gilroy_Regular",
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Selamat Datang di Halaman Utama",
              style: TextStyle(fontSize: 20),
            ),
            // TugasDelapan(),
          ],
        ),
      ),
    );
  }
}
