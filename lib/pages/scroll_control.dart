import 'package:flutter/material.dart';

class ScrollControllerDemo extends StatefulWidget {
  @override
  _ScrollControllerDemoState createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print("滚动位置: ${_controller.offset}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ScrollController 示例")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(
            0,
            duration: Duration(seconds: 1),
            curve: Curves.easeOut,
          );
        },
      ),
      body: ListView.builder(
        controller: _controller,
        itemCount: 50,
        itemBuilder: (context, i) => ListTile(title: Text("Item $i")),
      ),
    );
  }
}
