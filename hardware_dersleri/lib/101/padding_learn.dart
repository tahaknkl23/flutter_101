import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
              width: 200,
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            width: 200,
          ),
          const Padding(
            padding: ProjectPadding.pagePaddinOnly,
            child: Text("Ali"),
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
  static const pagePaddinOnly = EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}
