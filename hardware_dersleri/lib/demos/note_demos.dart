import 'package:flutter/material.dart';
import 'package:hardware_dersleri/101/image_learn.dart';

class NoteDemeos extends StatelessWidget {
  const NoteDemeos({super.key});
  final title = "Create your first note";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizantalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleBook),
            TitleWidget(title: title),
            Padding(
              padding: PaddingItems.horizantalPadding,
              child: Text(
                "Add a note" * 8,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return _SubTitleWidget(title: title);
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
