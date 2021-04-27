import 'package:flutter/material.dart';
import 'package:flutter_app/pages/about.dart';
import 'package:flutter_app/pages/favorite.dart';
import 'package:flutter_app/pages/news.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }


    var myNavChildren = [
      headerChild,
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.favorite, "Favorite", FavoritePage.routeName),
      getNavItem(Icons.group, "About", AboutPage.routeName),
      getNavItem(Icons.explore, "News", NewsPage.routeName)
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
        child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer Example"),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        )),
      endDrawer: getNavDrawer(context),
    );
  }
}


