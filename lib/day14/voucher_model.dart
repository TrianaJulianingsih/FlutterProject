// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VoucherModel {
  final String name;
  final String code;
  final String expiryDate;
  final String discount;
  VoucherModel({
    required this.name,
    required this.code,
    required this.discount,
    required this.expiryDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'code': code,
      'discount': discount,
      'expiryDate': expiryDate,
    };
  }

  factory VoucherModel.fromMap(Map<String, dynamic> map) {
    return VoucherModel(
      name: map['name'] as String,
      code: map['code'] as String,
      discount: map['discount'] as String,
      expiryDate: map['expiryDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VoucherModel.fromJson(String source) =>
      VoucherModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
