import 'package:flutter/material.dart';

class Blur_Form extends StatelessWidget {
  const Blur_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/pics2.jpg', fit: BoxFit.cover),
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 50, top: 100),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              height: 300,
              width: 500,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
