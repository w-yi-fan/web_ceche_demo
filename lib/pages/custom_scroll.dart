import 'package:flutter/material.dart';

class CustomScrollDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(title: Text("SliverAppBar")),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text("Item $index")),
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}
