// To parse this JSON data, do
//
//     final reqResponse = reqResponseFromJson(jsonString);

import 'dart:convert';

//Recibe un String y retorna una instancia (objeto) de la clase 
ReqResponse reqResponseFromJson(String str) => ReqResponse.fromJson(json.decode(str));

//Lo convierte a json (para las peticiones)
String reqResponseToJson(ReqResponse data) => json.encode(data.toJson());

class ReqResponse {

    int? page;
    int? perPage;
    int? total;
    int? totalPages;
    List<Datum>? data;
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
        data:       json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
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

class Datum {

    int? id;
    String? email;
    String? firstName;
    String? lastName;
    String? avatar;


    Datum({
        this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.avatar,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id:        json["id"] == null ? null : json["id"],
        email:     json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName:  json["last_name"] == null ? null : json["last_name"],
        avatar:    json["avatar"] == null ? null : json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id":        id == null ? null : id,
        "email":     email == null ? null : email,
        "first_name":firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "avatar":    avatar == null ? null : avatar,
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
