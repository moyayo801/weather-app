// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: camel_case_types
class details extends StatelessWidget {
  final String cityname;
final List temp;
final List icon;
final List desc;
details({required this.temp,required this.icon,required this.desc,required this.cityname});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,250,245,239),
      body:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
                      padding: const EdgeInsets.fromLTRB(0, 70.0, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                        ),
                        height: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,

                                    child:
                                     Text('${cityname}',
                                      style: TextStyle(
                                    color: Color.fromARGB(255, 6, 26, 125),
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal
                                    ),),
                                    ),
                                  ),
                                   Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,

                                    child:
                                     Text('${temp[0]} °',
                                    style: TextStyle(
                                    color: Color.fromARGB(255, 6, 26, 125),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold
                                    ),
              ),
                                    ),
                                  ),
                                     Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                    child:
                                     Container(
                                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromARGB(255, 218, 218, 218)),
                                       child: Padding(
                                         padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
                                         child: Text('${desc[0]}',
                                          style: TextStyle(
                                    color: Color.fromARGB(255, 6, 26, 125),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                    ),
                                         ),
                                       )
                                       ),
                                    ),
                                  ),
                                ],
                              )
                              ),
                               Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                height: 200,
                              child:
                              Image.network("http://openweathermap.org/img/wn/${icon[0]}@2x.png")
                              ,
                              )
                              )
                          ],
                        ),
                        ),
          
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
            child: Container(
              height: 250,

              child:ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: temp.length,
              itemBuilder: (BuildContext context, int index) => Card(
                color:Color.fromARGB(255,250,245,239) ,
                elevation: 0,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                             alignment: Alignment.center,
                          
                            width: 100,
                        child: Image.network("http://openweathermap.org/img/wn/${icon[index]}@2x.png")
                      ,)
                          ),
                         Expanded(
                          flex: 1,
                          child: Container(
                             alignment: Alignment.center,
                          
                            width: 100,
                          child: Text('${temp[index]} °',
                           style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                    ),
                          )
                      ,)
                          ),
                Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,

                            width: 100,
                          child: Text('${desc[index]}')
                      ,)
                          )
                      ],)
                  ),
            ),
      ),
              ),
            
        ],
      )
    );
  }
}