import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  static const String routeName = "/favorite";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Container(
          child: Center(
            child: Text("Favorite Page"),
          )),
    );
  }


}