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
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text('My AppBar'),
              elevation: 0.0,
              backgroundColor: const Color(0xFFB4C56C).withOpacity(0.5),
              centerTitle: true,
            ),
            body: Container(
              child: const Center(
                  child: Text(
                'Hello',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
