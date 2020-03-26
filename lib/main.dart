import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersmarthome/r.dart';
import 'package:fluttersmarthome/sec_widget.dart';
import 'package:fluttersmarthome/third_widget.dart';

import 'fourth_widget.dart';
import 'frist_widget.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xfff6f8fa),
      ),
      home: SmartHome(),
    );
  }
}

class SmartHome extends StatefulWidget {
  @override
  _SmartHomeState createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 12.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 46.0,
                          height: 46.0,
                          child: Stack(
                            children: <Widget>[
                              Image.asset(R.assetsImgIconUser),
                              Positioned(
                                right: 0.0,
                                child: Container(
                                  width: 16.0,
                                  height: 16.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Container(
                          child: Image.asset(R.assetsImgIconMenu),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Hello, ",
                          style: TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 30.0,
                          ),
                          children: [
                            TextSpan(
                              text: "Diana!",
                              style: TextStyle(color: Color(0xFF24233A)),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "let's manage your smart homw",
                      style:
                          TextStyle(color: Color(0xFF9B9B9B), fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 36.0,
                    ),
                  ],
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                FristWidget(),
                SecWidget(),
                ThirdWidget(),
                FourthWidget(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 36.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Current temperoture",
                        style: TextStyle(
                          color: Color(0xFFC7C5CC),
                          fontSize: 18.0,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Turn On/Off",
                            style: TextStyle(
                              color: Color(0xFFC7C5CC),
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "24.5",
                        style: TextStyle(
                          color: Color(0xFF1E1C34),
                          fontSize: 26.0,
                        ),
                      ),
                      Text(
                        " °C",
                        style: TextStyle(
                          color: Color(0xffCECED0),
                          fontSize: 22.0,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: isCheck,
                              activeColor: isCheck ? Colors.blue : Colors.grey,
                              onChanged: (bool) {
                                isCheck = bool;
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(R.assetsImgHome),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(R.assetsImgIconNotice),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Container(),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(R.assetsImgIconFamily),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(R.assetsImgIconApp),
            title: Text(""),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Image.asset(
          R.assetsImgIconFlash,
          scale: 1.5,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
