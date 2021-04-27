import 'package:flutter/material.dart';
import 'package:flutter_app/tabs/first.dart';
import 'package:flutter_app/tabs/second.dart';
import 'package:flutter_app/tabs/third.dart';

class NewsPage extends StatefulWidget {
  static const String routeName = "/news";

  @override
  NewsPageState createState() => NewsPageState();
}

class NewsPageState extends State<NewsPage> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
        tabs: <Tab>[
          Tab(
            icon: Icon(Icons.favorite),
          ),
          Tab(
            icon: Icon(Icons.circle),
          ),
          Tab(
            icon: Icon(Icons.people),
          ),
        ],
      controller: controller,
    );
  }
  
  TabBarView getTabBarView(var tabs) {
    return TabBarView(
        children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[First(), Second(), Third()])
    );
  }




}