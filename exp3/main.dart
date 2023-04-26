// ignore_for_file: prefer_const_constructors

import 'package:exp_3_mad/MyForm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: MyForm()),
      ),
    );
  }
}
