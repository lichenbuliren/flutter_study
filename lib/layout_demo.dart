import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              buildTopRow(context),
              buildTopRow(context),
            ]
          )
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget buildTopRow(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
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

  }
}