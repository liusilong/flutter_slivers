import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
            return null;
          },
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text('SliverBar'),
                expandedHeight: 200,
                backgroundColor: Colors.orangeAccent,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  title: Text('Index $index'),
                );
              }, childCount: 30))
            ],
          ),
        ),
      ),
    );
  }
}
