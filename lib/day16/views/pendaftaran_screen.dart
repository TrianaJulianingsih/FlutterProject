import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';
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
      appBar: AppBar(
        title: Text("Pendaftaran Peserta"),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerMenu(),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: participants.length,
              itemBuilder: (BuildContext context, int index) {
                final dataPeserta = participants[index];
                return Card(
                  color: const Color.fromARGB(255, 244, 187, 54),
                  child: ListTile(
                    title: Text(dataPeserta.nama),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataPeserta.email),
                        Text(dataPeserta.namaEvent),
                        Text(dataPeserta.asalKota),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Card(
                          color: Colors.blue,
                          child: IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Edit Data'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormConst(
                                        controller: namaController
                                          ..text = dataPeserta.nama,
                                        hintText: 'Nama',
                                      ),
                                      SizedBox(height: 12),
                                      TextFormConst(
                                        controller: emailController
                                          ..text = dataPeserta.email,
                                        hintText: 'Email',
                                      ),
                                      SizedBox(height: 12),
                                      TextFormConst(
                                        controller: namaEventController
                                          ..text = dataPeserta.namaEvent,
                                        hintText: 'Nama Event',
                                      ),
                                      SizedBox(height: 12),
                                      TextFormConst(
                                        controller: asalKotaController
                                          ..text = dataPeserta.asalKota,
                                        hintText: 'Asal Kota',
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        final dataUser = Peserta(
                                          id: dataPeserta.id!,
                                          nama: namaController.text,
                                          email: emailController.text,
                                          namaEvent: namaEventController.text,
                                          asalKota: asalKotaController.text
                                              .trim(),
                                        );
                                        DbHelper.updatePeserta(dataUser);
                                        getUser();
                                        Navigator.pop(context);
                                      },
                                      child: Text('Simpan'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('Batal'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: Icon(Icons.edit, color: Colors.white),
                          ),
                        ),
                        Card(
                          color: Colors.red,
                          child: IconButton(
                            onPressed: () {
                              DbHelper.deletePeserta(dataPeserta.id!);
                              getUser();
                            },
                            icon: Icon(Icons.delete, color: Colors.white),
                          ),
                        ),
                      ],
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
