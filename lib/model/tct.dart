// To parse this JSON data, do
//
//     final tct = tctFromJson(jsonString);

import 'dart:convert';

Tct tctFromJson(String str) => Tct.fromJson(json.decode(str));

String tctToJson(Tct data) => json.encode(data.toJson());

class Tct {
  Tct({
    this.activity,
    this.type,
    this.participants,
    this.price,
    this.link,
    this.key,
    this.accessibility,
  });

  String? activity;
  String? type;
  int? participants;
  dynamic price;
  String? link;
  String? key;
  dynamic accessibility;

  factory Tct.fromJson(Map<String, dynamic> json) => Tct(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}
