import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';

class ListMap extends StatefulWidget {
  const ListMap({super.key});

  @override
  State<ListMap> createState() => _ListMapState();
}

class _ListMapState extends State<ListMap> {
  final List<Map<String, dynamic>> voucher = [
    {
      "name": "Liburan ke Singapura",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Citilink",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Liburan ke Dubai",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Lebih Hemat naik Sriwijaya & Nam Air",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Liburan ke Bali",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Garuda Indonesia",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Lion Air",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Nam Air",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Sriwijaya Air",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
    {
      "name": "Promo Batik Air",
      "code": "SINGAPURA2025",
      "discount": "30%",
      "expiryDate": "2025-12-31",
    },
  ];
  final List<Map<String, dynamic>> tickets = [
    {
      "name": "Lion Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Garuda Indonesia",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Citilink",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Sriwijaya Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Nam Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Batik Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Air Asia",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Wings Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Super Air Jet",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
    {
      "name": "Trigana Air",
      "departure": "Jakarta - Singapura",
      "departuredate": "2025-12-31",
      "time": "08:00",
      "price": "Rp 1.500.000",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("List Map"),
          backgroundColor: Colors.blue,
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 7, 36, 255),
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(text: "Voucher", icon: Icon(Icons.card_giftcard)),
              Tab(text: "Ticket", icon: Icon(Icons.event)),
            ],
          ),
        ),

        drawer: DrawerMenu(),

        body: TabBarView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: voucher.length, // Example count
              itemBuilder: (BuildContext context, int index) {
                final dataVoucher = voucher[index];
                return Card(
                  child: ListTile(
                    title: Text(dataVoucher['name']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Disc: ${dataVoucher['discount']}"),
                        Text("Exp: ${dataVoucher['expiryDate']}"),
                      ],
                    ),
                    leading: Icon(Icons.card_giftcard),
                  ),
                );
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: tickets.length, // Example count
              itemBuilder: (BuildContext context, int index) {
                final dataTicket = tickets[index];
                return Card(
                  child: ListTile(
                    title: Text(dataTicket['name']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${dataTicket['departure']}"),
                        Text(
                          "${dataTicket['departuredate']} - ${dataTicket['time']}",
                        ),
                        Text("${dataTicket['price']}"),
                      ],
                    ),
                    leading: Icon(Icons.airplane_ticket_outlined),
                  ),
                );
              },
            ),
          ],
          // ),
        ),
      ),
    );
  }
}
