import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/models/index.dart';
import 'package:provider/provider.dart';

//第一个页面，负责读数据
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //取出资源
    final _counter = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('DataFlow Page1'),
      ),
      //展示资源中的数据
      body: Center(
        child: Text('Counter: ${_counter.counter}'),
      ),
      //跳转到SecondPage
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage())),
        child: Icon(Icons.navigate_next),
      ));
  }
}

//第二个页面，负责读写数据
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //取出资源
    return Scaffold(
      appBar: AppBar(
        title: Text('DataFlow Page2'),
      ),
      //展示资源中的数据
      body: Consumer<CounterModel>(
        builder: (context, CounterModel counter, _) => Center(
          child: Text('Value: ${counter.counter}')
        )
      ),
      //用资源更新方法来设置按钮点击回调
      floatingActionButton: Consumer<CounterModel>(
        builder: (context, CounterModel counter, child) => FloatingActionButton(
          onPressed: counter.increment,
          child: child,
        ),
        child: TestIcon(),
      )
    );
  }
}

class TestIcon extends StatelessWidget {
  const TestIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('TestIcon Build $kReleaseMode');
    return Icon(Icons.add);
  }
}