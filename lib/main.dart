import 'package:flutter/material.dart';
import 'package:weather_app/home_page.dart';

void main() {
  runApp(const weather());
}

class weather extends StatelessWidget {
  const weather({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
