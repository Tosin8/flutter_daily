import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Frosted_Glass extends StatelessWidget {
  const Frosted_Glass({super.key});

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
              title: const Text(
                'New App',
              ),
              elevation: 0.0,
              backgroundColor: const Color(0xFFB4C56C).withOpacity(0.5),
            ),
            body: Container(
                child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            )))
      ],
    ));
  }
}
