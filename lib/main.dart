import 'package:flutter/material.dart';
import 'package:softwarica/login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
      },
    ),
  );
}
