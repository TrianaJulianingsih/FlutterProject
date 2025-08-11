import 'package:flutter/material.dart';
// import 'package:ppkd_flutter_1/day10/drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      // drawer: DrawerMenu(),
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
