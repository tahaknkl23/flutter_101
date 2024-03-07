import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hardware_dersleri/101/list_tile_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.red,
        elevation: 0,
      )),
      home: const ListTileLearn(),
    );
  }
}
