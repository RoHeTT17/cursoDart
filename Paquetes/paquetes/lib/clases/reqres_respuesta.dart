// To parse this JSON data, do
//
//     final reqResponse = reqResponseFromJson(jsonString);

import 'dart:convert';

import 'persona.dart';

//Recibe un String y retorna una instancia (objeto) de la clase 
ReqResponse reqResponseFromJson(String str) => ReqResponse.fromJson(json.decode(str));

//Lo convierte a json (para las peticiones)
String reqResponseToJson(ReqResponse data) => json.encode(data.toJson());

class ReqResponse {

    int? page;
    int? perPage;
    int? total;
    int? totalPages;
    List<Persona>? data;
    Support? support;

    ReqResponse({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.support,
    });


    factory ReqResponse.fromJson(Map<String, dynamic> json) => ReqResponse(
        page:       json["page"] == null ? null : json["page"],
        perPage:    json["per_page"] == null ? null : json["per_page"],
        total:      json["total"] == null ? null : json["total"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        data:       json["data"] == null ? null : List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support:    json["support"] == null ? null : Support.fromJson(json["support"]),
    );

    Map<String, dynamic> toJson() => {
        "page":        page == null ? null : page,
        "per_page":    perPage == null ? null : perPage,
        "total":       total == null ? null : total,
        "total_pages": totalPages == null ? null : totalPages,
        "data":        data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support":     support == null ? null : support!.toJson(),
    };
}

class Support {

    String? url;
    String? text;

    Support({
        this.url,
        this.text,
    });

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"] == null ? null : json["url"],
        text: json["text"] == null ? null : json["text"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "text": text == null ? null : text,
    };
}
