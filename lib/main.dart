import 'package:cryptocurrency_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Crypto());
}

class Crypto extends StatelessWidget {
  const Crypto({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
