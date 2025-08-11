import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  // final bool? appBar;
  static const id = "/home";

  @override
  State<Home> createState() => _TugasTujuhState();
}

class _TugasTujuhState extends State<Home> {
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

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Gilroy_Regular",
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notery is A note-sharing application for buying and selling for Telkom University students. Available on mobile devices and the website.",
              style: TextStyle(fontSize: 14, fontFamily: "Poppins_Regular"),
            ),
            SizedBox(height: 20),
            Text(
              "By: Triana Julianingsih",
              style: TextStyle(fontSize: 14, fontFamily: "Poppins_Medium"),
            ),
            Text(
              "Version: 2025",
              style: TextStyle(fontSize: 14, fontFamily: "Poppins_Medium"),
            ),
          ],
        ),
      ),
    );
  }
}
