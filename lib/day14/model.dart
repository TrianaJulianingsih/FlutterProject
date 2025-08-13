import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';
import 'package:ppkd_flutter_1/day14/ticket_model.dart';
import 'package:ppkd_flutter_1/day14/voucher_model.dart';

class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  final List<VoucherModel> voucherModel = [
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Sriwijaya Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Garuda Indonesia",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
    VoucherModel(
      name: "Lion Air",
      code: "SINGAPURA2025",
      discount: "20%",
      expiryDate: "2025-12-31",
    ),
  ];
  final List<TicketModel> ticketModel = [
    TicketModel(
      name: "Lion Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Garuda Indonesia",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Citilink",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Sriwijaya Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Nam Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Batik Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Air Asia",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Wings Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Super Air Jet",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
    TicketModel(
      name: "Trigana Air",
      departure: "Jakarta - Singapura",
      departureDate: "2025-12-31",
      time: "08:00",
      price: "Rp 1.500.000",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Model"), backgroundColor: Colors.blue),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "List Vouchers",
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
              itemCount: voucherModel.length,
              itemBuilder: (BuildContext context, int index) {
                final dataVoucherModel = voucherModel[index];
                return Card(
                  color: const Color.fromARGB(255, 139, 6, 148),
                  child: ListTile(
                    title: Text(
                      dataVoucherModel.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      dataVoucherModel.code,
                      style: TextStyle(color: Colors.amber),
                    ),
                    // trailing: CircleAvatar(backgroundColor: dataVoucherModel.discount),
                    leading: Icon(Icons.card_giftcard, color: Colors.white),
                  ),
                );
              },
            ),
            Divider(indent: 5, endIndent: 5),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "List Tickets",
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
              itemCount: ticketModel.length,
              itemBuilder: (BuildContext context, int index) {
                final dataTicketModel = ticketModel[index];
                return Card(
                  color: const Color.fromARGB(255, 7, 65, 255),
                  child: ListTile(
                    title: Text(
                      dataTicketModel.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      dataTicketModel.departure,
                      style: TextStyle(color: Colors.amber),
                    ),
                    // trailing: CircleAvatar(backgroundColor: dataVoucherModel.discount),
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
