import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class Service{

  Future<weatherres> getWeather(String lat, String lon) async{
//api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={API key}
final parameters = {'lat':lat, 'lon':lon ,'units':'imperial', 'appid': 'd60f1844a3a91618e1e092bed0cee1c2'};

final uri= Uri.https(
  'api.openweathermap.org', '/data/2.5/forecast', parameters);

  final response = await http.get(uri);
  print(response.body);
    final json = jsonDecode(response.body);
  return weatherres.fromJson(json);
  }

    Future<locationRes> getlocation(String city) async{
//http://api.openweathermap.org/geo/1.0/direct?q={city name},{state code},{country code}&limit={limit}&appid={API key}
final parameters = {'q': city, 'appid': 'd60f1844a3a91618e1e092bed0cee1c2'};

final uri= Uri.https(
  'api.openweathermap.org', '/geo/1.0/direct', parameters);

  final response = await http.get(uri);
  final json = jsonDecode(response.body);
  return locationRes.fromJson(json[0]);
  }
}