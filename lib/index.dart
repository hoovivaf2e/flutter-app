import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/favorite.dart';
import 'package:flutter_app/pages/news.dart';
import 'package:flutter_app/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: <String, WidgetBuilder> {
      AboutPage.routeName: (BuildContext context) => AboutPage(),
      FavoritePage.routeName: (BuildContext context) => FavoritePage(),
      NewsPage.routeName: (BuildContext context) => NewsPage(),
    },
  ));
}