import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Lengkap",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/jiso.jpg")
                ),
              ),
              
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text("Triana Julianingsih",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Lobster"
                    ),
                  ),
                ],
              ),
          ), 
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 254, 114, 83),
                border: Border.all(color: const Color.fromARGB(255, 248, 236, 6), width: 2),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  Spacer(),
                  Text("triana1@gmail.com ", 
                    style: TextStyle(
                      fontFamily: "Roboto_Regular",
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                  
                ],
                
              ),
              
            ),
            
          ), 
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 114, 83),
                  border: Border.all(color: const Color.fromARGB(255, 248, 236, 6), width: 2),
                  borderRadius: BorderRadius.circular(8)
                ),
              child: Row(
                children: [
                  Icon(Icons.telegram),
                  Spacer(),
                  Text("0812-3456-7890",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Expanded(
    
              child: Row(
                children: [
                  Expanded(
                    
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 213, 100, 247),
                      ),
                      child: Center( 
                        child: 
                          Text("Postingan",
                            style: TextStyle(
                                fontSize: 16
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 18, 130, 234),
                        ),
                      child: Center(
                        child:
                            Text("Followers",
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ) 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(15),

              child: Column(
                children: [
                  Text("Deskripsi",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lobster"
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Saya seorang mahasiswa Telkom University jurusan Rekayasa Perangkat Lunak. Saya memiliki minat di bidang teknologi.")
                ],
              ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 114, 83),
                  borderRadius: BorderRadius.circular(8)
                ),
            ),
          )
        ],
        
      )
    );
  }
}