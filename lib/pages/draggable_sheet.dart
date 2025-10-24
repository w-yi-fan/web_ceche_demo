import 'package:flutter/material.dart';

class DraggableSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Text("主页面内容")),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.1,
            maxChildSize: 0.8,
            builder: (context, controller) {
              return Container(
                color: Colors.grey[300],
                child: ListView.builder(
                  controller: controller,
                  itemCount: 30,
                  itemBuilder: (context, i) => ListTile(title: Text("Item $i")),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
