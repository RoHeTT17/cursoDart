// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

import 'currency.dart';
import 'flag.dart';
import 'language.dart';
import 'translations.dart';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String>? callingCodes;
  String capital;
  List<String>? altSpellings;
  String subregion;
  String region;
  int population;
  List<double>? latlng;
  String demonym;
  double area;
  double gini;
  List<String>? timezones;
  List<String>? borders;
  String nativeName;
  String numericCode;
  Flags? flags;
  List<Currency>? currencies;
  List<Language>? languages;
  Translations? translations;
  String flag;
  List<RegionalBloc>? regionalBlocs;
  String cioc;
  bool independent;

  Pais({
       required this.name,
       required this.topLevelDomain,
       required this.alpha2Code,
       required this.alpha3Code,
                this.callingCodes,
       required this.capital,
        this.altSpellings,
       required this.subregion,
       required this.region,
       required this.population,
        this.latlng,
       required this.demonym,
       required this.area,
       required this.gini,
        this.timezones,
        this.borders,
       required this.nativeName,
       required this.numericCode,
        this.flags,
        this.currencies,
        this.languages,
        this.translations,
       required this.flag,
        this.regionalBlocs,
       required this.cioc,
       required this.independent,
    });

  
    factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name:           json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code:     json["alpha2Code"]   == null ? null : json["alpha2Code"],
        alpha3Code:     json["alpha3Code"]   == null ? null : json["alpha3Code"],
        callingCodes:   json["callingCodes"] == null ? null : List<String>.from(json["callingCodes"].map((x) => x)),
        capital:        json["capital"]      == null ? null : json["capital"],
        altSpellings:   json["altSpellings"] == null ? null : List<String>.from(json["altSpellings"].map((x) => x)),
        subregion:      json["subregion"],
        region:         json["region"] == null ? null : json["region"],
        population:     json["population"] == null ? null : json["population"],
        latlng:         json["latlng"] == null ? null : List<double>.from(json["latlng"].map((x) => x)),
        demonym:        json["demonym"] == null ? null : json["demonym"],
        area:           json["area"]== null ? null : json["area"],
        gini:           json["gini"] == null ? null : json["gini"].toDouble(),
        timezones:      json["timezones"] == null ? null : List<String>.from(json["timezones"].map((x) => x)),
        borders:        json["borders"]   == null ? null : List<String>.from(json["borders"].map((x) => x)),
        nativeName:     json["nativeName"] == null ? null : json["nativeName"],
        numericCode:    json["numericCode"] == null ? null : json["numericCode"],
        flags:          json["flags"] == null ? null : Flags.fromJson(json["flags"]),
        currencies:     json["currencies"] == null ? null : List<Currency>.from(json["currencies"].map((x) => Currency.fromJson(x))),
        languages:      json["languages"] == null ? null : List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
        translations:   json["translations"] == null ? null : Translations.fromJson(json["translations"]),
        flag:           json["flag"] == null ? null : json["flag"],
        regionalBlocs:  json["regionalBlocs"] == null ? null : List<RegionalBloc>.from(json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        cioc:           json["cioc"] == null ? null : json["cioc"],
        independent:    json["independent"] == null ? null : json["independent"],
    );

    Map<String, dynamic> toJson() => {
        "name"          : name == null ? null : name,
        "topLevelDomain": topLevelDomain == null ? null : List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code"    : alpha2Code == null ? null : alpha2Code,
        "alpha3Code"    : alpha3Code == null ? null : alpha3Code,
        "callingCodes"  : callingCodes == null ? null : List<dynamic>.from(callingCodes!.map((x) => x)),
        "capital"       : capital == null ? null : capital,
        "altSpellings"  : altSpellings == null ? null : List<dynamic>.from(altSpellings!.map((x) => x)),
        "subregion"     : subregion == null ? null : subregion,
        "region"        : region == null ? null : region,
        "population"    : population == null ? null : population,
        "latlng"        : latlng == null ? null : List<dynamic>.from(latlng!.map((x) => x)),
        "demonym"       : demonym == null ? null : demonym,
        "area"          : area == null ? null : area,
        "gini"          : gini == null ? null : gini,
        "timezones"     : timezones == null ? null : List<dynamic>.from(timezones!.map((x) => x)),
        "borders"       : borders == null ? null : List<dynamic>.from(borders!.map((x) => x)),
        "nativeName"    : nativeName == null ? null : nativeName,
        "numericCode"   : numericCode == null ? null : numericCode,
        "flags"         : flags == null ? null : flags!.toJson(),
        "currencies"    : currencies == null ? null : List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "languages"     : languages == null ? null : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "translations"  : translations == null ? null : translations!.toJson(),
        "flag"          : flag == null ? null : flag,
        "regionalBlocs" : regionalBlocs == null ? null : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "cioc"          : cioc == null ? null : cioc,
        "independent"   : independent == null ? null : independent,
    };
}

class RegionalBloc {
    RegionalBloc({
        this.acronym,
        this.name,
        this.otherNames,
        this.otherAcronyms,
    });

    String? acronym;
    String? name;
    List<String>? otherNames;
    List<String>? otherAcronyms;

    factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym       : json["acronym"] == null ? null : json["acronym"],
        name          : json["name"] == null ? null : json["name"],
        otherNames    : json["otherNames"] == null ? null : List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms : json["otherAcronyms"] == null ? null : List<String>.from(json["otherAcronyms"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "acronym": acronym == null ? null : acronym,
        "name": name == null ? null : name,
        "otherNames": otherNames == null ? null : List<dynamic>.from(otherNames!.map((x) => x)),
        "otherAcronyms": otherAcronyms == null ? null : List<dynamic>.from(otherAcronyms!.map((x) => x)),
    };
}