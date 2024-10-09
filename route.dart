import 'package:flutter/cupertino.dart';
import 'package:mobile/dashbaord.dart';
import 'package:mobile/undsen/home.dart';
import 'package:mobile/undsen/login.dart';

enum RouteNames{
  home,
  login,
dashbaord;
  String get route{
    switch(this){
      case RouteNames.home:
      return "home";
      case RouteNames.login:
        return "login";
      case RouteNames.dashbaord:
        return "dashbaord";
    }
  }
}
var routes = <String,WidgetBuilder> {
  RouteNames.home.route: (_)=>Home(),
  RouteNames.login.route: (_)=>Login(),
  RouteNames.dashbaord.route: (_)=>dashbaord()

};