import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class ListVoucher extends StatefulWidget {
  const ListVoucher({super.key});

  @override
  State<ListVoucher> createState() => _ListVoucherState();
}

class _ListVoucherState extends State<ListVoucher> {
  final List<String> namaVoucher = [
    "Liburan ke Singapura",
    "Promo Citilink",
    "Liburan ke Dubai",
    "Lebih Hemat naik Sriwijaya & Nam Air",
    "Liburan ke Bali",
    "Promo Garuda Indonesia",
    "Promo Lion Air",
    "Promo Nam Air",
    "Promo Sriwijaya Air",
    "Promo Batik Air",
  ];
  final List<String> namaTicket = [
    "Lion Air",
    "Garuda Indonesia",
    "Citilink",
    "Sriwijaya Air",
    "Nam Air",
    "Batik Air",
    "Air Asia",
    "Wings Air",
    "Super Air Jet",
    "Trigana Air",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Voucher & Ticket"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "List of Vouchers",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 251, 7, 255),
                  fontFamily: "Lobster",
                ),
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: namaVoucher.length,
              itemBuilder: (BuildContext contex, int index) {
                return Card(
                  color: const Color.fromARGB(255, 139, 6, 148),
                  child: ListTile(
                    title: Text(
                      namaVoucher[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    minTileHeight: 5,
                    leading: Icon(Icons.card_giftcard, color: Colors.white),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "List of Tickets",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
                  fontFamily: "Lobster",
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: namaTicket.length,
              itemBuilder: (BuildContext contex, int index) {
                return Card(
                  color: const Color.fromARGB(255, 7, 65, 255),
                  child: ListTile(
                    title: Text(
                      namaTicket[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    minTileHeight: 5,
                    leading: Icon(
                      Icons.airplane_ticket_outlined,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
