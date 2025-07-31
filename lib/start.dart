import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil Saya",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Roboto_SemiBold",
            fontSize: 30
          ),
        ),
        backgroundColor: Colors.amber,
        actions: [
          Icon(Icons.favorite),
          Icon(Icons.favorite)
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add)
      ),
      // backgroundColor: Colors.black,
      // body: Center(child: Text("data")),
      body: Column(

        //MainAxis center untuk posisi ketengah
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,

        spacing: 10,
        children: [
          //Warna Standar Flutter (MEJIKUHIBINIU)
          Text(
            "Triana Julianingsih", 
            style: TextStyle(
              fontSize: 30, 
              color: const Color.fromARGB(255, 64, 77, 255),
              fontFamily: "Roboto_SemiBold"
            )),
          SizedBox(height: 10),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.location_on),
              Text(
                "Jakarta",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Roboto_Regular",
                )
              ),
              SizedBox(height: 25)
            ],
          ),
          Text(
            "Saya adalah seorang mahasiswa Telkom University jurusan Rekayasa Perangkat Lunak yang memiliki hobby : menonton film, bermain game, dan membaca buku.",
            style: TextStyle(
              fontSize: 16,
              
            ),
          ),
         
        ],
      )
    );
  }
}