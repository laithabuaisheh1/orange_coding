import 'package:flutter/material.dart';
import 'package:flutter_application_1/exampls/SliverappBarExample.dart';

//import 'exampel/sliverappbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliverAppBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}
