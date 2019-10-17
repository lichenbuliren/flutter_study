import 'package:flutter/material.dart';
import './custom_scroll_view.dart';
import './demo_list.dart';
import './random_word.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: Home(),
      theme: ThemeData(primaryColor: Colors.blue)
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Flutter Study Demo')),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.list),
              title: Text('ListView Demo'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DemoListPage()),
              )
            ),
            ListTile(
              leading: Icon(Icons.filter_list),
              title: Text('Random Words'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RandomWords()),
              )
            ),
            ListTile(
              leading: Icon(Icons.live_tv),
              title: Text('CustomScrollView'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CustomScrollViewDemo()))
            )
          ],
      )),
    );
  }
}
