// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';
import 'package:ppkd_flutter_1/day23/api/get_character.dart';
import 'package:ppkd_flutter_1/day23/models/character_model.dart';

class GetCharacterScreen extends StatefulWidget {
  const GetCharacterScreen({super.key});

  @override
  State<GetCharacterScreen> createState() => _GetCharacterScreenState();
}

class _GetCharacterScreenState extends State<GetCharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Jikan", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Gilroy_Regular",
          ),), centerTitle: true, backgroundColor: Colors.blue),
      drawer: DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<List<Datum>>(
              future: getCharacter(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  final characters = snapshot.data as List<Datum>;
                  return ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: characters.length,
                    itemBuilder: (BuildContext context, int index) {
                      final dataCharacter = characters[index];
                      return Card(
                        color: const Color.fromARGB(123, 53, 178, 255),
                        child: ListTile(
                          leading: dataCharacter.trailer?.images?.imageUrl == null
                              ? CircleAvatar()
                              : Image.network(
                                  dataCharacter.trailer?.images?.imageUrl ?? "",
                                  errorBuilder: (context, error, stackTrace) {
                                    return CircleAvatar();
                                  },
                                ),
                          title: Text(dataCharacter.title ?? ""),
                          subtitle: Text(
                            "${dataCharacter.rating} - ${dataCharacter.score}" ??
                                "",
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Text("Gagal memuat data");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
