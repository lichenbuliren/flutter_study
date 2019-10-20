import 'package:flutter/material.dart';
import '../models/index.dart';

class AppUpdateItemCard extends StatefulWidget {
  final AppUpdateItemCardModel model;
  AppUpdateItemCard({Key key, this.model}) : super(key: key);

  _AppUpdateItemCardState createState() => _AppUpdateItemCardState();
}

class _AppUpdateItemCardState extends State<AppUpdateItemCard> {
  bool showDesc = false;

  void onTap() {
    setState(() {
      showDesc = !showDesc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        buildTopRow(context),
        buildBottomRow(context),
      ]),
    );
  }

  Widget buildTopRow(context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              widget.model.appIcon,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.model.appName,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(widget.model.appDate,
                        style: TextStyle(color: Colors.grey))
                  ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 30,
                child: FlatButton(
                  onPressed: () {},
                  color: Color.fromRGBO(240, 240, 247, 1),
                  textColor: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('OPEN',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
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
        Stack(
          children: <Widget>[
            Text(widget.model.appDescription, maxLines: !showDesc ? 2 : null),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 60,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(14),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Colors.white, Colors.white70],
                    stops: [0.7, 1],
                  )
                ),
                child: FlatButton(
                  child: Text('more',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 14.0)),
                  onPressed: onTap,
                  highlightColor: Colors.transparent,
                  disabledColor: Colors.transparent,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  textColor: Colors.blue,
                ),
              )
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
          child: Text('${widget.model.appVersion} · ${widget.model.appSize}',
              style: TextStyle(color: Colors.grey)),
        )
      ],
    );
  }
}
