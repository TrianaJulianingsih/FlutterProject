import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day15/text_form.dart';
import 'package:ppkd_flutter_1/day16/model/peserta.dart';
import 'package:ppkd_flutter_1/day16/sqflite/db_helper.dart';

class PendaftaranScreen extends StatefulWidget {
  const PendaftaranScreen({super.key});

  @override
  State<PendaftaranScreen> createState() => _PendaftaranScreenState();
}

class _PendaftaranScreenState extends State<PendaftaranScreen> {
  List<Peserta> participants = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController namaEventController = TextEditingController();
  final TextEditingController asalKotaController = TextEditingController();

  Future<void> getUser() async {
    final dataPeserta = await DbHelper.getAllPesertas();
    print(dataPeserta);
    print(dataPeserta.length);
    setState(() {
      participants = dataPeserta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pendaftaran Peserta")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormConst(hintText: "Nama", controller: namaController),
            SizedBox(height: 20),
            TextFormConst(hintText: "Email", controller: emailController),
            SizedBox(height: 20),
            TextFormConst(
              hintText: "Nama Event",
              controller: namaEventController,
            ),
            SizedBox(height: 20),
            TextFormConst(
              hintText: "Asal Kota",
              controller: asalKotaController,
            ),
            ElevatedButton(
              onPressed: () async {
                final nama = namaController.text.trim();
                final email = emailController.text.trim();
                final namaEvent = namaEventController.text.trim();
                final asalKota = asalKotaController.text.trim();
                if (nama.isEmpty ||
                    email.isEmpty ||
                    namaEvent.isEmpty ||
                    asalKota.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Email, Password, dan Nama tidak boleh kosong",
                      ),
                    ),
                  );

                  return;
                }
                final peserta = Peserta(
                  nama: nama,
                  email: email,
                  namaEvent: namaEvent,
                  asalKota: asalKota,
                );
                await DbHelper.registerPeserta(peserta);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pendaftaran berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },
              child: Text("Simpan Data"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: participants.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = participants[index];
                return ListTile(
                  title: Text(dataUserLogin.nama),
                  subtitle: Column(
                    children: [
                      Text(dataUserLogin.email),
                      Text(dataUserLogin.namaEvent),
                      Text(dataUserLogin.asalKota),
                    ],
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
