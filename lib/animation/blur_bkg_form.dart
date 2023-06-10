import 'package:flutter/material.dart';

class Blur_Form extends StatelessWidget {
  const Blur_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/pics2.jpg', fit: BoxFit.cover),
        Scaffold(
          body: Container(
            height: 300,
            width: 500,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
