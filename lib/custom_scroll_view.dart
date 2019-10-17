import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatelessWidget {
  const CustomScrollViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView Demo')
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('SilverAppBar'),
            automaticallyImplyLeading: false,
            floating: true,
            flexibleSpace: Image.network('https://www.cleverbox.co.uk/wp-content/uploads/2016/06/school-connect-app-banner.jpg', fit: BoxFit.cover, height: 300),
            expandedHeight: 300,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Item #$index')),
              childCount: 20
            )
          )
        ],
      ),
    );
  }
}