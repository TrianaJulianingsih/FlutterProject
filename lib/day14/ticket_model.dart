// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TicketModel {
  final String name;
  final String departure;
  final String departureDate;
  final String time;
  final String price;
  TicketModel({
    required this.name,
    required this.departure,
    required this.departureDate,
    required this.time,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'departure': departure,
      'departuredate': departureDate,
      'time': time,
      'price': price,
    };
  }

  factory TicketModel.fromMap(Map<String, dynamic> map) {
    return TicketModel(
      name: map['name'] as String,
      departure: map['departure'] as String,
      departureDate: map['departuredate'] as String,
      time: map['time'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketModel.fromJson(String source) =>
      TicketModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
