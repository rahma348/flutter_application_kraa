// ignore_for_file: prefer_const_constructors, unused_import, use_build_context_synchronously, no_leading_underscores_for_local_identifiers, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, unused_field, deprecated_member_use, unnecessary_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_kraa/Classes/language.dart';
import 'package:flutter_application_kraa/Classes/language_constants.dart';
import 'package:flutter_application_kraa/main.dart';
import 'package:flutter_application_kraa/pages/Diabetes.dart';
import 'package:flutter_application_kraa/pages/Pressure.dart';
import 'package:flutter_application_kraa/pages/Walking.dart';
import 'package:flutter_application_kraa/pages/hist.dart';
import 'package:flutter_application_kraa/pages/login.dart';
import 'package:flutter_application_kraa/pages/notifications.dart';
import 'package:flutter_application_kraa/pages/profile.dart';
import 'package:flutter_application_kraa/pages/water.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

@override
class _HomeState extends State<Home> {
  TooltipBehavior? _tooltipBehavior;
  List<ChartData>? chartData;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    chartData = <ChartData>[
      ChartData(
          'ML ',  800, Color.fromARGB(255, 158, 202, 237), 'ML'),
      ChartData('Mins ', 7200,
          Color.fromARGB(219, 255, 138, 194), 'Mins'),
      ChartData('Steps ', 10500,
          const  Color.fromARGB(217, 72, 203, 140), 'Steps'),
    ];
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    //   final List<ChartData> chartData = <ChartData>[
    //   ChartData('ML',700 , Color.fromARGB(219, 255, 138, 194)),
    //   ChartData('Mins', 1000,  Color.fromARGB(255, 158, 202, 237)),
    // ChartData('Steps', 1000, Color.fromARGB(217, 72, 203, 140)),
    // ];
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        actions: <Widget>[
          DropdownButton<Language>(
            underline: const SizedBox(),
            icon: const Icon(
              Icons.language,
              size: 40,
              color: Color(0xFF0E725B),
            ),
            onChanged: (Language? language) async {
              if (language != null) {
                Locale _locale = await setLocale(language.languageCode);
                MyApp.setLocale(context, _locale);
              }
            },
            items: Language.languageList()
                .map<DropdownMenuItem<Language>>(
                  (e) => DropdownMenuItem<Language>(
                    value: e,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          e.flag,
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xFF0E725B),
                          ),
                        ),
                        Text(e.name)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
              icon: const Icon(
                Icons.notifications,
                size: 40,
                color: Color(0xFF0E725B),
              )),
          PopupMenuButton(
              color: const Color(0xffFFFFFF),
              icon: const Icon(Icons.person),
              iconSize: 40,
              iconColor: const Color(0xFF0E725B),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: translation(context).profile,
                      child: MaterialButton(
                          child: Row(children: [
                            Icon(
                              Icons.person,
                              color: Color(0xff0C8A7D),
                              size: 33,
                            ),
                            Text(translation(context).profile,
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 22,
                                    fontWeight: FontWeight.normal)),
                          ]),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Profile()));
                          }),
                    ),
                    PopupMenuItem(
                        value: translation(context).logout,
                        child: MaterialButton(
                            child: Row(children: [
                              Icon(
                                Icons.logout,
                                color: Color(0xff0C8A7D),
                                size: 33,
                              ),
                              Text(translation(context).logout,
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 22,
                                      fontWeight: FontWeight.normal)),
                            ]),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            }))
                  ])
        ],
        iconTheme: const IconThemeData(
          size: 40,
          color: Color(0xFF0E725B),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const ListTile(
                trailing: Icon(
                  Icons.menu_open,
                  size: 33,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Hist()));
              },
              child: ListTile(
                trailing: Icon(
                  Icons.sticky_note_2_sharp,
                  size: 20,
                ),
                title: Text(translation(context).history,
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Expanded(
                        child: AlertDialog(
                          title: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                translation(context).contact,
                                style: TextStyle(
                                    color: Color(0xFF0E725B), fontSize: 29),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Home()));
                                },
                                icon: const Icon(
                                  Icons.cancel,
                                  size: 40,
                                  color: Color(0xFF0E725B),
                                ),
                              ),
                            ],
                          )),
                          content: Container(
                            width: 399,
                            height: 280,
                            child: Column(
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.edit_location,
                                    color: Color(0xFF0E725B),
                                    size: 40,
                                  ),
                                  label: const Text(
                                    " Street .. Building 54             ",
                                    style: TextStyle(
                                        color: Color(0xFF0E725B), fontSize: 25),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.email,
                                    color: Color(0xFF0E725B),
                                    size: 40,
                                  ),
                                  label: const Text(
                                    " Mail@gmail.com                ",
                                    style: TextStyle(
                                        color: Color(0xFF0E725B), fontSize: 25),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.phone,
                                    color: Color(0xFF0E725B),
                                    size: 40,
                                  ),
                                  label: const Text(
                                    " +36 60 876 543                   ",
                                    style: TextStyle(
                                        color: Color(0xFF0E725B), fontSize: 25),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.alarm,
                                    color: Color(0xFF0E725B),
                                    size: 40,
                                  ),
                                  label: const Text(
                                    " Sat:9am to 4pm Sun:8am",
                                    style: TextStyle(
                                        color: Color(0xFF0E725B), fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      translation(context).ok,
                                      style: TextStyle(
                                          color: Color(0xFF0E725B),
                                          fontSize: 22),
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Home()));
                                    },
                                    child: Text(
                                      translation(context).cancel,
                                      style: TextStyle(
                                          color: Color(0xFF0E725B),
                                          fontSize: 22),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: ListTile(
                trailing: Icon(
                  Icons.phone,
                  size: 20,
                ),
                title: Text(translation(context).contact,
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: 
        Column(
          children: [
          
            
            Container(
            
              child: Text(
              
                (DateFormat.yMMMMd().format(DateTime.now())),style:TextStyle(color: Color(0xff0C8A7D),
                fontSize: 48) ,
                
                
                ),
              ),
            
     EasyDateTimeLine(
      initialDate: DateTime.now(),
      
      onDateChange: (selectedDate) {
        
        //`selectedDate` the new date selected.
      },
      
      activeColor:  Color.fromARGB(255, 236, 235, 235),
      
      headerProps: const EasyHeaderProps(
      monthStyle: TextStyle(color: Color(0xff0C8A7D),fontSize: 20),
        showSelectedDate: false,
        
      ),
      dayProps: const EasyDayProps(
        todayHighlightStyle: TodayHighlightStyle.withBackground,
        height: 70,
        width: 70,
        dayStructure: DayStructure.dayNumDayStr,
        
        inactiveDayStrStyle:TextStyle(color:Colors.white) ,
        inactiveBorderRadius: 20,
        inactiveDayStyle: DayStyle(
          borderRadius: 44,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.all(Radius.circular(150)) ,
            color:Color(0xff0C8A7D),
            // color:  Color(0xff0C8A7D)
            ),
            
          dayNumStyle: TextStyle(
            color:   Colors.white,
            fontSize: 18.0,

          ),
        ),
        activeDayStyle: DayStyle(
          // decoration: BoxDecoration(border:Border.symmetric()),
          dayNumStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color:  Colors.black
          ),
        ),
      ),
      
      
      ),
      
SizedBox(height: 10,)      
          
            ,SingleChildScrollView(
              child: Expanded(
                child: Row(
                  
                  children: [
                    Expanded(
                      child: Column(
                      
                        children: [
                          Row(
                            children: [
                              Container(
                        
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(217, 72, 203, 140)),
                                width: 60,
                                height: 50,
                                child: Image.asset("assets/img/Sneakers.png",
                                    width: 60,
                                    height: 50,
                                    fit: BoxFit.contain),
                              ),
                              Container(
                              
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    translation(context).steps,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                              
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:Color.fromARGB(219, 255, 138, 194)),
                                width: 60,
                                height: 50,
                                child: Image.asset(
                                    "assets/img/Time Span.png",
                                    width: 60,
                                    height: 50,
                                    fit: BoxFit.contain),
                              ),
                              Container(
                                
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    translation(context).mins,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 158, 202, 237)),
                                width: 60,
                                height: 50,
                                child: Image.asset("assets/img/Water Glass.png",
                                    width: 60,
                                    height: 50,
                                    fit: BoxFit.contain),
                              ),
                              Container(
                              
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    translation(context).ml,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                  child: SfCircularChart(
                    key: GlobalKey(),
        legend: Legend(
            toggleSeriesVisibility: false,
            isVisible: true,
            iconHeight: 20,
            iconWidth: 20,
            overflowMode: LegendItemOverflowMode.wrap),
                      series: <CircularSeries<ChartData, String>>[
                        
            RadialBarSeries<ChartData, String>(
                maximumValue: 1000,
                radius: '100%',
                gap: '3%',
                
                dataSource: chartData,
                cornerStyle: CornerStyle.bothCurve,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                 pointColorMapper: (ChartData data, _) => data.Color,
                  dataLabelMapper: (ChartData data, _) => data.text,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
              
                
                
              )
          ]))
                    ),
                  ],
                ),
              ),
            ),
            // workouts 
            Padding(padding:  EdgeInsets.only(bottom: 10),
            child: 
            ElevatedButton(onPressed: (){},
              child: ContainerCard(
                          containerWidget:
            Row( children: [
              Image.asset("assets/img/stopwatch (2).png",
              width: 50,
              height: 60,
              ),
              SizedBox(width: 10,),
              Text(  translation(context).time,
                      style: TextStyle(fontSize: 19, color: Colors.black,fontWeight: FontWeight.bold),
                    ),


            ],)
                    ),),
              
              
              ),
            
            ////////////////////
                
            SizedBox(
              height: 10,
              width: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 158, 202, 237),
                      ),
                      height: 160,
                      width: 160,
                      child: 
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle
                            ),
                            width: 90,
                            height: 80,
                            child: Image.asset(
                              "assets/img/Ellipse 9.png",
                              width: 90,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Water()));
                            },
                            child: Text(
                              translation(context).water,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(197, 252, 177, 177),
                      ),
                      height: 160,
                      width: 160,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white),
                            width: 90,
                            height: 80,
                            child: Image.asset(
                              "assets/img/Ellipse 10.png",
                              width: 90,
                              height: 80,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            height: 1,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Walking()));
                            },
                            child: Text(
                              translation(context).walking,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(204, 244, 209, 144),
                    ),
                    height: 160,
                    width: 160,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: 90,
                          height: 80,
                          child: Image.asset(
                            "assets/img/Ellipse 11.png",
                            width: 90,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          height: 1,
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => Medicine()));
                          },
                          child: Text(
                            translation(context).medicine,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(205, 146, 228, 143),
                    ),
                    height: 160,
                    width: 160,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: 90,
                          height: 80,
                          child: Image.asset(
                            "assets/img/Ellipse 12.png",
                            width: 90,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          height: 1,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Pressure()));
                          },
                          child: Text(
                            translation(context).pressure,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(248, 162, 208, 211),
                    ),
                    height: 160,
                    width: 160,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: 90,
                          height: 80,
                          child: Image.asset(
                            "assets/img/Ellipse 13.png",
                            width: 90,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          height: 2,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Diabetes()));
                          },
                          child: Text(
                            translation(context).diabetes,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(194, 255, 174, 252),
                    ),
                    height: 160,
                    width: 160,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 9, 10, 10),
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: 90,
                          height: 80,
                          child: Image.asset(
                            "assets/img/Ellipse 14.png",
                            width: 90,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                          height: 2,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            translation(context).exercises,
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
              width: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 2, 37),
                    alignment: Alignment.topLeft,
                    width: 70,
                    height: 90,
                    child: Image.asset(
                      "assets/img/photo1707854808.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 140,
                    width: 260,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          translation(context).track,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 18),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          translation(context).tr,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 20, 19, 15),
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          translation(context).understand,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 18),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          translation(context).under,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 20, 19, 15),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 0, 37),
                    alignment: Alignment.topLeft,
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      "assets/img/photo1707749887 (2)..png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 2, 37),
                    alignment: Alignment.topLeft,
                    width: 70,
                    height: 70,
                    child: Image.asset(
                      "assets/img/photo1707854966.png",
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          translation(context).treatment,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 18),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          translation(context).treat,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 20, 19, 15),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          translation(context).improve,
                          style:
                              TextStyle(color: Color(0xFF0E725B), fontSize: 18),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          translation(context).imp,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 20, 19, 15),
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 0, 42),
                    alignment: Alignment.topLeft,
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      "assets/img/photo1707854801.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
class ChartData {
  ChartData(this.x, this.y, this.Color, this.text);
  final String x;
  final double y;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final Color;
   final String text;
}
