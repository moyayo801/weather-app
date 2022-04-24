/* 
[
  {
    "name": "London",
    "local_names": {
      "af": "Londen",
      "ar": "لندن",
      "ascii": "London",
      "az": "London",
      "bg": "Лондон",
      "ca": "Londres",
      "da": "London",
      "de": "London",
      "el": "Λονδίνο",
      "en": "London",
      "eu": "Londres",
      "fa": "لندن",
      "feature_name": "London",
      "fi": "Lontoo",
      "fr": "Londres",
      "gl": "Londres",
      "he": "לונדון",
      "hi": "लंदन",
      "hr": "London",
      "hu": "London",
      "id": "London",
      "it": "Londra",
      "ja": "ロンドン",
      "la": "Londinium",
      "lt": "Londonas",
      "mk": "Лондон",
      "nl": "Londen",
      "no": "London",
      "pl": "Londyn",
      "pt": "Londres",
      "ro": "Londra",
      "ru": "Лондон",
      "sk": "Londýn",
      "sl": "London",
      "sr": "Лондон",
      "th": "ลอนดอน",
      "tr": "Londra",
      "vi": "Luân Đôn",
      "zu": "ILondon"
    },
    "lat": 51.5085,
    "lon": -0.1257,
    "country": "GB"
  },
  {
    "name": "London",
    "local_names": {
      "ar": "لندن",
      "ascii": "London",
      "bg": "Лондон",
      "de": "London",
      "en": "London",
      "fa": "لندن، انتاریو",
      "feature_name": "London",
      "fi": "London",
      "fr": "London",
      "he": "לונדון",
      "ja": "ロンドン",
      "lt": "Londonas",
      "nl": "London",
      "pl": "London",
      "pt": "London",
      "ru": "Лондон",
      "sr": "Лондон"
    },
    "lat": 42.9834,
    "lon": -81.233,
    "country": "CA"
  },
  {
    "name": "London",
    "local_names": {
      "ar": "لندن",
      "ascii": "London",
      "en": "London",
      "fa": "لندن، اوهایو",
      "feature_name": "London",
      "sr": "Ландон"
    },
    "lat": 39.8865,
    "lon": -83.4483,
    "country": "US",
    "state": "OH"
  },
  {
    "name": "London",
    "local_names": {
      "ar": "لندن",
      "ascii": "London",
      "en": "London",
      "fa": "لندن، کنتاکی",
      "feature_name": "London",
      "sr": "Ландон"
    },
    "lat": 37.129,
    "lon": -84.0833,
    "country": "US",
    "state": "KY"
  },
  {
    "name": "London",
    "local_names": {
      "ascii": "London",
      "ca": "Londres",
      "en": "London",
      "feature_name": "London"
    },
    "lat": 36.4761,
    "lon": -119.4432,

  }
]
 */
class tempRes {
  final double temp;
  tempRes({required this.temp});
    factory tempRes.fromJson(Map<String, dynamic> json){
    final temp = json['temp'];
  
  return tempRes(temp: temp);
  }
  
}
class infRes {
  final String icon;
  final String desc;
  infRes({required this.icon,required this.desc});

    factory infRes.fromJson(Map<String, dynamic> json){
    final icon = json['icon'];
    final desc = json['main'];
  
  return infRes(icon: icon, desc: desc);
  }
  
}





class mainRes {

  final tempRes tempinf;
 mainRes({required this.tempinf});


  factory mainRes.fromJson(Map<String, dynamic> json){
    final main = json['main'];
    final tempinf = tempRes.fromJson(main);
  return mainRes(tempinf: tempinf);
  }
  
}

class weathRes {

  final infRes inf;
 weathRes({required this.inf});


  factory weathRes.fromJson(Map<String, dynamic> json){
    final weather = json['weather'][0];
    final inf = infRes.fromJson(weather);
  return weathRes(inf: inf);
  }
  
}

class weatherres {
  final mainRes maininf;
  final mainRes maininf1;
  final mainRes maininf2;
  final mainRes maininf3;
  final mainRes maininf4;
    final weathRes weathinf;
  final weathRes weathinf1;
  final weathRes weathinf2;
  final weathRes weathinf3;
  final weathRes weathinf4;
  weatherres({required this.maininf, required this.maininf1,required this.maininf2,required this.maininf3,required this.maininf4,required this.weathinf, required this.weathinf1,required this.weathinf2,required this.weathinf3,required this.weathinf4});
   factory weatherres.fromJson(Map<String, dynamic> json){
    final list = json['list'][0];
    final maininf = mainRes.fromJson(list);
    final weathinf = weathRes.fromJson(list);
        final list1 = json['list'][1];
    final maininf1 = mainRes.fromJson(list1);
    final weathinf1 = weathRes.fromJson(list1);
        final list2 = json['list'][2];
    final maininf2 = mainRes.fromJson(list2);
final weathinf2 = weathRes.fromJson(list2);
        final list3 = json['list'][3];
    final maininf3 = mainRes.fromJson(list3);
final weathinf3 = weathRes.fromJson(list3);
        final list4 = json['list'][4];
    final maininf4 = mainRes.fromJson(list4);
    final weathinf4 = weathRes.fromJson(list4);
    return weatherres(maininf: maininf, maininf1: maininf1, maininf2: maininf2, maininf3: maininf3, maininf4: maininf4, weathinf: weathinf, weathinf1: weathinf1, weathinf2: weathinf2, weathinf3: weathinf3, weathinf4: weathinf4);
  }
  
}






















// ignore: camel_case_types
class locationRes {
  final String cityname;
  final double lat;
  final double lon;

  locationRes({required this.cityname, required this.lat, required this.lon});

  factory locationRes.fromJson(Map<String, dynamic> json){
    final cityname = json['name'];
    final lat = json['lat'];
     final lon = json['lon'];
    return locationRes(cityname: cityname, lat: lat, lon: lon);
  }
  
}