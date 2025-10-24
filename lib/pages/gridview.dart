import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView 示例")),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          30,
          (i) => Container(
            margin: EdgeInsets.all(4),
            color: Colors.blue,
            child: Center(
              child: Text("Item $i", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
