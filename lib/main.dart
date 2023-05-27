import 'package:flutter/material.dart';
import 'package:flutter_daily/exit_app.dart';
import 'package:flutter_daily/frosted_glass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: const Exit_App());
  }
}
