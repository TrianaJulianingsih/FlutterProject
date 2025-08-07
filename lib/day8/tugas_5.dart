import 'package:flutter/material.dart';

class TugasLima extends StatefulWidget {
  const TugasLima({super.key});

  @override
  State<TugasLima> createState() => _Day8StateState();
}

class _Day8StateState extends State<TugasLima> {
  int counter = 0;
  String name = "Nama saya: Triana";
  String tampilFavorite = "Disukai";
  bool showName = true;
  bool favoriteIcon = true;
  bool selengkapnya = true;
  bool kotakFoto = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Interaktif Pengguna"),
        backgroundColor: const Color.fromARGB(255, 209, 161, 246),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          children: [
            Text("Tampilkan Nama:", style: TextStyle(fontSize: 16)),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showName = !showName;
                  });
                },
                child: Text(showName ? "Klik" : "Klik"),
              ),
            ),
            showName
                ? Text(
                    name,
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Lobster",
                      color: Colors.deepPurpleAccent,
                    ),
                  )
                : SizedBox(),

            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Column(
            //     children: [
            //       Container(
            //         height: 250,
            //         width: 250,
            //         decoration: BoxDecoration(
            //           shape: BoxShape.rectangle,
            //           image: DecorationImage(
            //             fit: BoxFit.cover,
            //             image: AssetImage("assets/images/jiso.jpg")
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favoriteIcon = !favoriteIcon;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: favoriteIcon
                          ? const Color.fromARGB(255, 255, 7, 7)
                          : Colors.blueGrey,
                    ),
                  ),
                  favoriteIcon
                      ? Text(
                          tampilFavorite,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Lobster",
                            color: Colors.deepPurpleAccent,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 5),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selengkapnya = !selengkapnya;
                    });
                  },
                  child: Text(
                    selengkapnya ? "Lihat Selengkapnya" : "Lihat Selengkapnya",
                  ),
                ),
                selengkapnya
                    ? Text(
                        "Saya sedang belajar mobile programming",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Lobster",
                          color: const Color.from(
                            alpha: 1,
                            red: 0.486,
                            green: 0.302,
                            blue: 1,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),

            // ),
            Text("$counter", style: TextStyle(fontSize: 20)),

            InkWell(
              onTap: () {
                print("Kotak disentuh");
                setState(() {
                  kotakFoto = !kotakFoto;
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 172, 7),
                ),
                alignment: Alignment.center,
                child: kotakFoto
                    ? Text(
                        "Ini Inkwekll",
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 60, 0, 255),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                print("Ditekan sekali");
              },
              onDoubleTap: () {
                print("Ditekan dua kali");
              },
              onLongPress: () {
                print("Tahan lama");
              },
              child: Container(
                color: Colors.deepPurpleAccent,
                height: 48,
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Tekan Aku",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
