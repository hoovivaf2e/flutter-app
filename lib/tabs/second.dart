import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 160.0,
              color: Colors.green,
            ),
            Text("Second Tab")
          ],
        ),
      ),
    );
  }
}