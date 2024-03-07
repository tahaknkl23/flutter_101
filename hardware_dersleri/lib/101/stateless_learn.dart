import 'package:flutter/material.dart';

class StaltessLearn extends StatelessWidget {
  const StaltessLearn({super.key});
  final String text2 = "Veli1";
  final String text3 = "Veli1";
  final String text4 = "Veli1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleWidget(text: text2),
          _emtyBox(),
          TitleWidget(text: text3),
          _emtyBox(),
          TitleWidget(text: text4),
          _emtyBox(),
          const _CustomContainer(),
          _emtyBox(),
        ],
      ),
    );
  }

  SizedBox _emtyBox() {
    return const SizedBox(
      height: 10,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.amber));
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      "text",
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
