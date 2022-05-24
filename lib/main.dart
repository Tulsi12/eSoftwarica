import 'package:flutter/material.dart';
import 'package:softwarica/navagation.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const NavgationBar(),
      },
    ),
  );
}
