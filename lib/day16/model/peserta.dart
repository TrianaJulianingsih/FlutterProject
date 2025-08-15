import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Peserta {
  final int? id;
  final String nama;
  final String email;
  final String namaEvent;
  final String asalKota;
  Peserta({
    this.id,
    required this.nama,
    required this.email,
    required this.namaEvent,
    required this.asalKota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'email': email,
      'nama_event': namaEvent,
      'asal_kota': asalKota,
    };
  }

  factory Peserta.fromMap(Map<String, dynamic> map) {
    return Peserta(
      id: map['id'] as int,
      nama: map['nama'] as String,
      email: map['email'] as String,
      namaEvent: map['nama_event'] as String,
      asalKota: map['asal_kota'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Peserta.fromJson(String source) =>
      Peserta.fromMap(json.decode(source) as Map<String, dynamic>);
}
