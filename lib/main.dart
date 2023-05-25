import 'package:flutter/material.dart';

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
        home: const MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Boarder')),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(color: Colors.blue, border: Border()),
          height: 300,
          width: 300,
          child: const Center(
              child: Text(
            'Hello World',
            style: TextStyle(color: Colors.white, fontSize: 30),
          )),
        ),
      ),
    );
  }
}
