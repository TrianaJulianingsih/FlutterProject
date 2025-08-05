import 'package:flutter/material.dart';

class TugasEmpat extends StatelessWidget {
  const TugasEmpat({super.key});

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
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(13),
              child: Container(
                padding: EdgeInsets.all(13),
                height: 450,
                width: 400,
                decoration: BoxDecoration(
                  border: BoxBorder.all(width: 3),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 231, 229, 229)
                ),
                child: Column(
                children: [
                  Row(children: [
                    Text("Nama",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )]),
                  Padding( 
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 1),
                    child: Container( 
                      color: const Color.fromARGB(255, 242, 218, 148),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan nama",
                          // labelText: "No. HP"
                        ),
                      )
                    ),
                  
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text("Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )]),
                  Padding(           
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 1),
                    child: Container(                     
                      color: const Color.fromARGB(255, 242, 218, 148),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan email",
                          // labelText: "No. HP"
                        ),
                      )
                    ),
                  
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text("No. HP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )]),
                  Padding(           
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 1),
                    child: Container(                      
                      color: const Color.fromARGB(255, 242, 218, 148),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "masukkan No.HP",
                          // labelText: "No. HP"
                        ),
                      )
                    ),                  
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Text("Deskripsi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )]),
                  Padding( 
          
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 1),

                    child: Container(
                      
                      color: const Color.fromARGB(255, 242, 218, 148),
                      child: TextFormField()
                    ),
                  
                  ),                 
                ],
                ),
              ),              
            ),
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text("ASUS Vivobook",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Rp7.000.000"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when tapped
              },
              
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Xiaomi Redmi 9",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Rp3.000.000"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.computer),
              title: Text("msi",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Rp20.000.000"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("AC",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Rp3.500.000"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when tapped
              },
            ),
            ListTile(
              leading: Icon(Icons.tab),
              title: Text("iPad",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text("Rp5.000.000"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Action when tapped
              },
            ),
        ],
        
      ),
    );
  }
}