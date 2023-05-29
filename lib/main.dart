import 'package:flutter/material.dart';
import 'package:flutter_daily/silver/custom_scroll.dart';
import 'package:flutter_daily/silver/slivergrid.dart';

import 'transparent_appbar.dart';

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
        home: const Sliver_App());
  }
}
