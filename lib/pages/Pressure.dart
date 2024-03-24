// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, unused_import, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_kraa/Classes/language_constants.dart';
import 'package:flutter_application_kraa/pages/Walking.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Pressure extends StatefulWidget {
  const Pressure({Key? key}) : super(key: key);

  @override
  State<Pressure> createState() => _PressureState();
}

class _PressureState extends State<Pressure> {
  @override
  Widget build(BuildContext context) {
  
    return Expanded(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Expanded(
                      child: Center(
                    child: AlertDialog(
                      title: Center(
                        child: Text(
                          translation(context).pressure,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 29),
                        ),
                      ),
                      content: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(

                                      // hintText:"--------------------",
                                      ),
                                ),
                                Text(
                                  "      SYS",
                                  style: TextStyle(
                                      color: Color(0xFF0E725B), fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(

                                      // hintText:"--------------------",
                                      ),
                                ),
                                Text(
                                  "      DIA",
                                  style: TextStyle(
                                      color: Color(0xFF0E725B), fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            width: 100,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(

                                      // hintText:"--------------------"
                                      ),
                                ),
                                Text(
                                  "      PUL",
                                  style: TextStyle(
                                      color: Color(0xFF0E725B), fontSize: 20),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  translation(context).save,
                                  style: TextStyle(
                                      color: Color(0xFF0E725B), fontSize: 20),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Pressure()));
                                },
                                child: Text(
                                  translation(context).cancel,
                                  style: TextStyle(
                                      color: Color(0xFF0E725B), fontSize: 20),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ));
                });
          },
          child: Icon(
            Icons.add,
            size: 50,
            color: Color(0xFF0E725B),
          ),
        ),
        appBar: AppBar(
            title: Text(translation(context).pressure,
                style: TextStyle(
                    color: Color(0xff0C8A7D),
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start),
            elevation: 0.0,
            iconTheme: const IconThemeData(color: Color(0xff0C8A7D), size: 27)),
        body: SingleChildScrollView(
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              //this week Container
                 ContainerCard(
              containerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     translation(context).today,
                     style: TextStyle(color:Color(0xff0C8A7D)),
                  ),
                  SizedBox(height: 5,),
                  SharedColorText(text:"-----------",),
                  SizedBox(height: 5,),
                  SharedText(text: translation(context).notyet,fontSize: 10,),

                ],


              ),
            ),
              const SizedBox(
                height: 20,
              ),
            
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child: 
                       ContainerCard(
                        containerWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                 translation(context).feb18,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 4, 40, 0),
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "118",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 50, 25),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "SYS",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 40, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight:FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DIA",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 4, 0, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "73",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 25),
                              alignment: Alignment.topRight,
                              child: Text(
                                "PUL",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],),),),
                  
                
                
              
              SizedBox(
                height: 20,
              ),
                
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child:  ContainerCard(
                        containerWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                 translation(context).feb17,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 4, 40, 0),
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "118",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 50, 25),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "SYS",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 40, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DIA",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 4, 0, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "73",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 25),
                              alignment: Alignment.topRight,
                              child: Text(
                                "PUL",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],),),),
                  
                
              
              SizedBox(
                height: 20,
              ),
              
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child:  ContainerCard(
                        containerWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                 translation(context).feb16,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 4, 40, 0),
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "118",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 50, 25),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "SYS",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 40, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DIA",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20
                                    ),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 4, 0, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "73",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 25),
                              alignment: Alignment.topRight,
                              child: Text(
                                "PUL",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20,),
                                ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],),),),
                  
              SizedBox(
                height: 20,
              ),
                
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child:  ContainerCard(
                        containerWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
     translation(context).feb15,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 4, 40, 0),
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "118",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 50, 25),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "SYS",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 40, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DIA",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 4, 0, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "73",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 25),
                              alignment: Alignment.topRight,
                              child: Text(
                                "PUL",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                            ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],),),),
                  
              SizedBox(
                height: 20,
              ),
              
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child:  ContainerCard(
                        containerWidget: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
         translation(context).feb14,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(15, 4, 40, 0),
                              alignment: Alignment.topLeft,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "118",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 0, 50, 25),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "SYS",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 40, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "76",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "DIA",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 4, 0, 0),
                              alignment: Alignment.topRight,
                              height: 50,
                              width: 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    "73",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20
                                        ,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(60, 0, 0, 25),
                              alignment: Alignment.topRight,
                              child: Text(
                                "PUL",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 20),
                            ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],),),),
                  
          
        ],  ),
      
        ),),
    );
  }
}

