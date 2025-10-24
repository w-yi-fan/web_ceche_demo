import 'package:flutter/material.dart';

class NestedScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(title: Text("NestedScrollView")),
          ),
        ],
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, i) => ListTile(title: Text("Item $i")),
        ),
      ),
    );
  }
}
