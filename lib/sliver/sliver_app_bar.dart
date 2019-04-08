import 'package:flutter/material.dart';
import 'dart:ui';

class SliverAppBarWidget extends StatelessWidget {

  List<Widget> titleBar(double width) {
  return [
    Container(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Container(
              child: Icon(Icons.access_alarm),
            ),
          ),
          Container(
            child: Text('machi'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Container(
              child: Icon(Icons.accessibility),
            ),
          ),
        ],
      ),
    )
  ];
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.orangeAccent,
                actions: titleBar(300),
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  title: Text('Liusilong',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  background: Image.network(
                      "https://user-gold-cdn.xitu.io/2019/3/9/16960e800cae9909?w=1460&h=1460&f=jpeg&s=1121122",
                      fit: BoxFit.cover),
                ),
              )
            ];
          },
          body: Center(
            child: Text("Liusilong"),
          ),
        ),
      ),
    );
  }
}
