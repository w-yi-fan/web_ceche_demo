import 'package:flutter/material.dart';

class ScrollbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scrollbar 示例")),
      body: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, i) => ListTile(title: Text("Item $i")),
        ),
      ),
    );
  }
}
