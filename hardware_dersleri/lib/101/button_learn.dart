import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});
  final String _title = "BUTONLAR";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          const Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          FloatingActionButton(
            child: const Icon(Icons.add_circle),
            onPressed: () {},
          ),
          InkWell(
              onTap: () {},
              child: Text(
                style: Theme.of(context).textTheme.titleMedium,
                "bUTON YAZİSİ",
              )),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                "Hasan TAHA kÜNKÜL",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
