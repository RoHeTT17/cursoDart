// To parse this JSON data, do
//
//     final language = languageFromJson(jsonString);

import 'dart:convert';

Language languageFromJson(String str) => Language.fromJson(json.decode(str));

String languageToJson(Language data) => json.encode(data.toJson());

class Language {

    String iso6391;
    String iso6392;
    String name;
    String nativeName;

    Language({
        required this.iso6391,
        required this.iso6392,
        required this.name,
        required this.nativeName,
    });

    factory Language.fromJson(Map<String, dynamic> json) => Language(
        iso6391: json["iso639_1"] == null ? null : json["iso639_1"],
        iso6392: json["iso639_2"] == null ? null : json["iso639_2"],
        name: json["name"] == null ? null : json["name"],
        nativeName: json["nativeName"] == null ? null : json["nativeName"],
    );

    Map<String, dynamic> toJson() => {
        "iso639_1": iso6391 == null ? null : iso6391,
        "iso639_2": iso6392 == null ? null : iso6392,
        "name": name == null ? null : name,
        "nativeName": nativeName == null ? null : nativeName,
    };
}
