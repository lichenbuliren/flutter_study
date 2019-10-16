import 'package:flutter/material.dart';

class DemoListPage extends StatelessWidget {
  const DemoListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Layout Demo')),
      // body: ListView(
      //   children: <Widget>[
      //     // 设置 ListTile 组件的标题与图标 
      //     ListTile(leading: Icon(Icons.map),  title: Text('Map')),
      //     ListTile(leading: Icon(Icons.mail), title: Text('Mail')),
      //     ListTile(leading: Icon(Icons.message), title: Text('Message')),
      //   ]
      // )
      body: ListView.separated(
        itemCount: 100, // 元素个数
        // itemExtent: 50.0, // 列表项高度
        separatorBuilder: (BuildContext context, int index) => Divider(color: index % 2 == 0 ? Colors.lightBlue : Colors.lightGreen,),
        itemBuilder: (BuildContext context, int index) => Container(
          child: Center(
            child: ListTile(title: Text("title $index"), subtitle: Text("body $index")),
          ),
          height: 80,
        )
      )
    );
  }
}