import 'package:flutter/material.dart';
import 'package:flutter_study/dataFlow/pages.dart';
import 'package:flutter_study/models/index.dart';
import 'package:provider/provider.dart';

class DataFlowDemo extends StatelessWidget {
  const DataFlowDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CounterModel(),
      child: MaterialApp(
        home: FirstPage()
      )
    );
  }
}