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
        appBar: AppBar(
          title: const Text(
            'Island',
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/pics.jpg',
              height: 300,
              width: 240,
              fit: BoxFit.cover,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Strawberry Pavlova',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const Text(
                    'Pavlova is a meringue based dessert named after the Russioan ballerina Anna Pavlova. Pavlolva features a crisp crust and soft, light topped with fruit and whipped cream',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      Icon(Icons.star, color: Colors.blue),
                      SizedBox(width: 160),
                      Expanded(child: Text('170 Reviews'))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                      // ignore: avoid_unnecessary_containers
                      child: Icon_Click),
                ],
              ),
            )
          ],
        ));
  }
}

// ignore: avoid_unnecessary_containers, non_constant_identifier_names
final Icon_Click = Container(
    child: const Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Column(
      children: [
        Icon(
          Icons.book,
          color: Colors.green,
        ),
        Text('PREP.'),
        Text('25min'),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.lock_clock,
          color: Colors.green,
        ),
        Text('COOK'),
        Text('1 hr'),
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.food_bank,
          color: Colors.green,
        ),
        Text('FEEDS'),
        Text('4-6'),
      ],
    ),
  ],
));
