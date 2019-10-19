import 'package:flutter/material.dart';
import './components/appUpdateItemCard.dart';
import './models/index.dart';

final appUpdateItemCardModel = new AppUpdateItemCardModel(
  appName: 'Google Mpas Transition App Google Mpas Transition App Google Mpas Transition App',
  appDate: '2019 年 10 月 19 日',
  appDescription: 'Thanks for using Google Maps! This release brings bug fixes that improve out products to help you discover new places and navigate to them;Thanks for using Google Maps! This release brings bug fixes that improve out products to help you discover new places and navigate to them',
  appIcon: 'assets/icons/googleMaps.png',
  appSize: '165.3 MB',
  appVersion: '1.8.8'
);

class LayoutDemo extends StatefulWidget {
  LayoutDemo({Key key}) : super(key: key);

  _LayoutDemoState createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LayoutDemo')),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              AppUpdateItemCard(
                model: appUpdateItemCardModel,
              ),
              AppUpdateItemCard(
                model: appUpdateItemCardModel,
              )
            ]
          )
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildTopRow(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset('assets/icons/googleMaps.png', fit: BoxFit.cover, width: 50, height: 50,),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Google Mpas Transition App Google Mpas Transition App Google Mpas Transition App', overflow: TextOverflow.ellipsis,),
                  Text('2019 年 6 月 5 号', style: TextStyle(color: Colors.grey))
                ]
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 30,
                  width: 80,
                  child: FlatButton(
                    onPressed: () {},
                    color: Color.fromRGBO(240, 240, 247, 1),
                    textColor: Colors.blue,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text('OPEN', style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildBottomRow(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Thanks for using Google Maps! This release brings bug fixes that improve out products to help you discover new places and navigate to them'),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Text('Version 8.4.0 · 165.3 MB', style: TextStyle(color: Colors.grey)),
        )
      ],
    );
  }
}