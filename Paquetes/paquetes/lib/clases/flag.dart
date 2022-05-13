// To parse this JSON data, do
//
//     final flag = flagFromJson(jsonString);

import 'dart:convert';

Flags flagFromJson(String str) => Flags.fromJson(json.decode(str));

String flagToJson(Flags data) => json.encode(data.toJson());

class Flags {

    String svg;
    String png;

    Flags({
        required this.svg,
        required this.png,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"] == null ? null : json["svg"],
        png: json["png"] == null ? null : json["png"],
    );

    Map<String, dynamic> toJson() => {
        "svg": svg == null ? null : svg,
        "png": png == null ? null : png,
    };
}
