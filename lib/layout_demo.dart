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
            ]
          )
        ),
      ),
    );
  }

  Widget buildTopRow(context) {
    return Row(
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
            FlatButton(
              onPressed: () {},
              child: Text('OPEN'),
            )
          ],
        )
      ],
    );
  }

  Widget buildBottomRow(context) {

  }
}