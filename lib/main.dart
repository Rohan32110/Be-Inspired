import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(const Inspire());

class Inspire extends StatelessWidget {
  const Inspire({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'ubuntu'),
      home: const HomePage(),
    );
  }
}
