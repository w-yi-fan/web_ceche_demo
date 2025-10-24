import 'package:flutter/material.dart';

class SingleChildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SingleChildScrollView 示例")),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            30,
            (i) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Item $i", style: TextStyle(fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}
