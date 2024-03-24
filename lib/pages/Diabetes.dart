// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_kraa/Classes/language_constants.dart';
import 'package:flutter_application_kraa/pages/Walking.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Diabetes extends StatefulWidget {
  const Diabetes({Key? key}) : super(key: key);

  @override
  State<Diabetes> createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
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
                        child: Text(translation(context).diabetes,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 29),
                        ),
                      ),
                      content: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "---------------------",
                        ),
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
                                      builder: (context) => Diabetes()));
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
      title:  Text(translation(context).diabetes,
              style: TextStyle(
                  color: Color(0xff0C8A7D),
                  fontSize: 24,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.start),
        elevation: 0.0,
          iconTheme: const IconThemeData(color: Color(0xff0C8A7D), size: 27)),
      body:SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          const  SizedBox(height: 10,),
            //this week Container
             ContainerCard(
              containerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SharedText(
                    text: translation(context).today,
                  ),
                  SizedBox(height: 5,),
                  SharedColorText(text:"-----------",),
                  SizedBox(height: 5,),
                  SharedText(text: translation(context).notyet,fontSize: 10,),

                ],


              ),
            ),
            const    SizedBox(height: 20,),
                  
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
                                 translation(context).feb18,style: TextStyle(
                                  fontSize: 16,color:Color(0xff0C8A7D)
                                ),),
                                Text(translation(context).high,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 5, 9),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "159",
                          style: TextStyle(color: Colors.black87, fontSize: 21),
                        ),
                      )
                    ],
                  ),
                ),),
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
                                Text(translation(context).normal,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 5, 9),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "115",
                          style: TextStyle(color: Colors.black87, fontSize: 21),
                        ),
                      )
                    ],
                  ),
                ),),
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
                          
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 5, 9),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "200",
                          style: TextStyle(color: Colors.black87, fontSize: 21),
                        ),
                      )
                    ],
                  ),
                ),),
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
                          
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 5, 9),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "284",
                          style: TextStyle(color: Colors.black87, fontSize: 21
                          ),
                        ),
                      )
                    ],
                  ),
                ),),
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
                                Text(translation(context).low,
                                style: TextStyle(
                                color:Colors.red,fontSize: 14,),),

                              ],),
                          
                  
                        // margin: EdgeInsets.fromLTRB(0, 1, 5, 9),
                        // alignment: Alignment.topLeft,
                         Text(
                          " 81",
                          style: TextStyle(color: Colors.black87, fontSize: 22
                          ,),
                        ),
                      
                    ],
                  ),
                ),
              
            ),
        ],  ),
        ),
      ),
    );
  }
}
