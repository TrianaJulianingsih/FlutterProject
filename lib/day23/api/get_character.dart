import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_flutter_1/day23/models/character_model.dart';

Future<List<Datum>> getCharacter() async {
  final response = await http.get(Uri.parse("https://api.jikan.moe/v4/anime"));
  if (response.statusCode == 200) {
    final List<dynamic> characterJson = json.decode(response.body)["data"];
    return characterJson.map((json) => Datum.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
