
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:weather/service.dart';

import 'details.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome() 
      );
    
  }


}
class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
   final cityText = TextEditingController();

 final service = Service();
var city = " ";
 var arrtempe = [];
 var icon = [];
  var desc = [];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              controller: cityText,
            ),

           ElevatedButton(onPressed: () {
            _search();
            Future.delayed(const Duration(seconds: 2), () {
          
              print(city);
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  details(temp: arrtempe, icon: icon, desc: desc, cityname: city))); 

// Here you can write your code

});
            
           }, child: Text('search'))
          ],
          ),
        )
         )
      );
  }

    void _search() async{
    
    final response = await  service.getlocation(cityText.text);
     var lat = response.lat.toString();
     var lon = response.lon.toString();
   final weather = await service.getWeather(lat, lon);

   var arrtemp =[weather.maininf.tempinf.temp,weather.maininf1.tempinf.temp,weather.maininf2.tempinf.temp,weather.maininf3.tempinf.temp,weather.maininf4.tempinf.temp];
   var iconn =[weather.weathinf.inf.icon ,weather.weathinf1.inf.icon,weather.weathinf2.inf.icon,weather.weathinf3.inf.icon,weather.weathinf4.inf.icon];
 var descc =[weather.weathinf.inf.desc ,weather.weathinf1.inf.desc,weather.weathinf2.inf.desc,weather.weathinf3.inf.desc,weather.weathinf4.inf.desc];
var cityy = response.cityname;

setState((){arrtempe = arrtemp;
city = cityy;
icon = iconn;
desc = descc;
} );
  }
}
