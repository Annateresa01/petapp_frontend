// To parse this JSON data, do
//
//     final petm = petmFromJson(jsonString);

import 'dart:convert';

List<Petm> petmFromJson(String str) => List<Petm>.from(json.decode(str).map((x) => Petm.fromJson(x)));

String petmToJson(List<Petm> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Petm {
  String id;
  int v;
  String? petType;
  String? petBreed;
  String? petNo;

  Petm({
    required this.id,
    required this.v,
    this.petType,
    this.petBreed,
    this.petNo,
  });

  factory Petm.fromJson(Map<String, dynamic> json) => Petm(
    id: json["_id"],
    v: json["__v"],
    petType: json["petType"],
    petBreed: json["petBreed"],
    petNo: json["petNo"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "__v": v,
    "petType": petType,
    "petBreed": petBreed,
    "petNo": petNo,
  };
}
