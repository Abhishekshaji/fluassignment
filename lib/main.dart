import 'package:flutter/material.dart';
import 'package:fluassignment/fpage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo), home: Assign());
  }
}

