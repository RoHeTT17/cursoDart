// To parse this JSON data, do
//
//     final translations = translationsFromJson(jsonString);

import 'dart:convert';

Translations translationsFromJson(String str) => Translations.fromJson(json.decode(str));

String translationsToJson(Translations data) => json.encode(data.toJson());

class Translations {
        
    String br;
    String pt;
    String nl;
    String hr;
    String fa;
    String de;
    String es;
    String fr;
    String ja;
    String it;
    String hu;

    Translations({
       required this.br,
       required this.pt,
       required this.nl,
       required this.hr,
       required this.fa,
       required this.de,
       required this.es,
       required this.fr,
       required this.ja,
       required this.it,
       required this.hu,
    });

    factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        br: json["br"] == null ? null : json["br"],
        pt: json["pt"] == null ? null : json["pt"],
        nl: json["nl"] == null ? null : json["nl"],
        hr: json["hr"] == null ? null : json["hr"],
        fa: json["fa"] == null ? null : json["fa"],
        de: json["de"] == null ? null : json["de"],
        es: json["es"] == null ? null : json["es"],
        fr: json["fr"] == null ? null : json["fr"],
        ja: json["ja"] == null ? null : json["ja"],
        it: json["it"] == null ? null : json["it"],
        hu: json["hu"] == null ? null : json["hu"],
    );

    Map<String, dynamic> toJson() => {
        "br": br == null ? null : br,
        "pt": pt == null ? null : pt,
        "nl": nl == null ? null : nl,
        "hr": hr == null ? null : hr,
        "fa": fa == null ? null : fa,
        "de": de == null ? null : de,
        "es": es == null ? null : es,
        "fr": fr == null ? null : fr,
        "ja": ja == null ? null : ja,
        "it": it == null ? null : it,
        "hu": hu == null ? null : hu,
    };
}
