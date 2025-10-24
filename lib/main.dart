import 'package:flutter/material.dart';
import 'pages/single_child.dart';
import 'pages/listview.dart';
import 'pages/gridview.dart';
import 'pages/custom_scroll.dart';
import 'pages/pageview.dart';
import 'pages/nested_scroll.dart';
import 'pages/scrollbar.dart';
import 'pages/draggable_sheet.dart';
import 'pages/scroll_control.dart';

void main() => runApp(ScrollDemoApp());

class ScrollDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Scroll Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> demos = [
    {"title": "SingleChildScrollView", "page": SingleChildDemo()},
    {"title": "ListView", "page": ListViewDemo()},
    {"title": "GridView", "page": GridViewDemo()},
    {"title": "CustomScrollView + Sliver", "page": CustomScrollDemo()},
    {"title": "PageView", "page": PageViewDemo()},
    {"title": "NestedScrollView", "page": NestedScrollDemo()},
    {"title": "Scrollbar", "page": ScrollbarDemo()},
    {"title": "DraggableScrollableSheet", "page": DraggableSheetDemo()},
    {"title": "ScrollController", "page": ScrollControllerDemo()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter 滚动组件 Demo")),
      body: ListView.builder(
        itemCount: demos.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text(demos[i]["title"]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => demos[i]["page"]),
            ),
          );
        },
      ),
    );
  }
}
