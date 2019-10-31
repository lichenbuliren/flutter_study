import 'package:flutter/foundation.dart';

class AppUpdateItemCardModel {
  String appIcon;
  String appName;
  String appSize;
  String appDate;
  String appDescription;
  String appVersion;

  AppUpdateItemCardModel({this.appIcon, this.appName, this.appSize, this.appDate, this.appDescription, this.appVersion});
}


//定义需要共享的数据模型，通过混入ChangeNotifier管理听众
class CounterModel with ChangeNotifier {
  int _count = 0;
  //读方法
  int get counter => _count; 
  //写方法
  void increment() {
    _count++;
    notifyListeners();//通知听众刷新
  }
}