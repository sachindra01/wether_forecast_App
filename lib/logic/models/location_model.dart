// To parse this JSON data, do
//
//     final locationModel = locationModelFromJson(jsonString);

import 'dart:convert';

class LocationModel {
    LocationModel({
         this.name,
         this.localNames,
         this.lat,
         this.lon,
         this.country,
    });

    String? name;
    LocalNames? localNames;
    double? lat;
    double? lon;
    String? country;

    factory LocationModel.fromRawJson(String str) => LocationModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        name: json["name"],
        localNames: LocalNames.fromJson(json["local_names"]),
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        country: json["country"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "local_names": localNames!.toJson(),
        "lat": lat,
        "lon": lon,
        "country": country,
    };
}

class LocalNames {
    LocalNames({
         this.af,
         this.ar,
         this.ascii,
         this.az,
         this.bg,
         this.ca,
         this.da,
         this.de,
         this.el,
         this.en,
         this.eu,
         this.fa,
         this.featureName,
         this.fi,
         this.fr,
         this.gl,
         this.he,
         this.hi,
         this.hr,
         this.hu,
         this.id,
         this.it,
         this.ja,
         this.la,
         this.lt,
         this.mk,
         this.nl,
         this.no,
         this.pl,
         this.pt,
         this.ro,
         this.ru,
         this.sk,
         this.sl,
         this.sr,
         this.th,
         this.tr,
         this.vi,
         this.zu,
    });

    String? af;
    String? ar;
    String? ascii;
    String? az;
    String? bg;
    String? ca;
    String? da;
    String? de;
    String? el;
    String? en;
    String? eu;
    String? fa;
    String? featureName;
    String? fi;
    String? fr;
    String? gl;
    String? he;
    String? hi;
    String? hr;
    String? hu;
    String? id;
    String? it;
    String? ja;
    String? la;
    String? lt;
    String? mk;
    String? nl;
    String? no;
    String? pl;
    String? pt;
    String? ro;
    String? ru;
    String? sk;
    String? sl;
    String? sr;
    String? th;
    String? tr;
    String? vi;
    String? zu;

    factory LocalNames.fromRawJson(String str) => LocalNames.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory LocalNames.fromJson(Map<String, dynamic> json) => LocalNames(
        af: json["af"],
        ar: json["ar"],
        ascii: json["ascii"],
        az: json["az"],
        bg: json["bg"],
        ca: json["ca"],
        da: json["da"],
        de: json["de"],
        el: json["el"],
        en: json["en"],
        eu: json["eu"],
        fa: json["fa"],
        featureName: json["feature_name"],
        fi: json["fi"],
        fr: json["fr"],
        gl: json["gl"],
        he: json["he"],
        hi: json["hi"],
        hr: json["hr"],
        hu: json["hu"],
        id: json["id"],
        it: json["it"],
        ja: json["ja"],
        la: json["la"],
        lt: json["lt"],
        mk: json["mk"],
        nl: json["nl"],
        no: json["no"],
        pl: json["pl"],
        pt: json["pt"],
        ro: json["ro"],
        ru: json["ru"],
        sk: json["sk"],
        sl: json["sl"],
        sr: json["sr"],
        th: json["th"],
        tr: json["tr"],
        vi: json["vi"],
        zu: json["zu"],
    );

    Map<String, dynamic> toJson() => {
        "af": af,
        "ar": ar,
        "ascii": ascii,
        "az": az,
        "bg": bg,
        "ca": ca,
        "da": da,
        "de": de,
        "el": el,
        "en": en,
        "eu": eu,
        "fa": fa,
        "feature_name": featureName,
        "fi": fi,
        "fr": fr,
        "gl": gl,
        "he": he,
        "hi": hi,
        "hr": hr,
        "hu": hu,
        "id": id,
        "it": it,
        "ja": ja,
        "la": la,
        "lt": lt,
        "mk": mk,
        "nl": nl,
        "no": no,
        "pl": pl,
        "pt": pt,
        "ro": ro,
        "ru": ru,
        "sk": sk,
        "sl": sl,
        "sr": sr,
        "th": th,
        "tr": tr,
        "vi": vi,
        "zu": zu,
    };
}
