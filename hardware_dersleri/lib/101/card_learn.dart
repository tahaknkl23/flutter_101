import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            margin: ProjectMargin.paddingAll,
            color: Theme.of(context).colorScheme.error,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const _CustomCard(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Center(child: Text("Ali")),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const paddingAll = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({required this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.paddingAll,
      color: Theme.of(context).colorScheme.error,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: child,
    );
  }
}
