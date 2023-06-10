import 'package:flutter/material.dart';

class Blur_Form extends StatelessWidget {
  const Blur_Form({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image.asset('assets/images/bkg.jpg', fit: BoxFit.cover)],
    );
  }
}
