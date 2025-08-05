import 'package:flutter/material.dart';

class TugasTiga extends StatelessWidget {
  const TugasTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulir",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(13),
                child: Container(
                  padding: EdgeInsets.all(13),
                  height: 370,
                  width: 400,
                  decoration: BoxDecoration(
                    border: BoxBorder.all(width: 3),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                  children: [
                    Row(children: [Text("Nama",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    )]),
                    TextField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "masukkan nama anda"
                      ),
                      
                    ),
                    SizedBox(height: 10),
                    Row(children: [Text("Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    )]),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "masukkan email anda"
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(children: [Text("No. HP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    )]),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "masukkan no. hp anda"
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(children: [Text("Deskripsi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    )]),
                    TextFormField(),
                  ],
                  ),
                ),
                
              ),
              GridView.count(
                shrinkWrap: true,
                padding: EdgeInsets.all(13),
                crossAxisCount: 3,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Stack(
                    children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Aku")),
                    ],
                  ),
                  Stack(
                    children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Triana")),
                    ],
                  ),
                  Stack(
                    children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Julianingsih")),
                    ],
                  ),
                  Stack(
                    children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 54, 244),
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Sedang")),
                    ],
                  ),
                  Stack(
                    children: [
                      
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 158, 54),
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Belajar")),
                    ],
                  ),
                  Stack(
                    children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 54, 244, 158),
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        Center(child: Text("Programming")),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      
    );
  }
}