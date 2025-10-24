import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PageView 示例")),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text("Page 1")),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text("Page 2")),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Page 3")),
          ),
        ],
      ),
    );
  }
}
