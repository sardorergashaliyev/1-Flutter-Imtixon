import 'package:flutter/material.dart';

import 'enter_page.dart';

void main(List<String> args) {
  runApp(const MyMainPage());
}

class MyMainPage extends StatelessWidget {
  const MyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyEnterPage(),
    );
  }
}