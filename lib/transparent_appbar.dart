import 'package:flutter/material.dart';

class Transparent_App extends StatelessWidget {
  const Transparent_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/pics.jpg',
            fit: BoxFit.cover,
          ),
          Scaffold(
            appBar: AppBar(
              title: const Text('My AppBar'),
              backgroundColor: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
