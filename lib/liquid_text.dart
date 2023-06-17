import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class LiquidTextView extends StatelessWidget {
  const LiquidTextView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            'TextLiquidFill',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 200),
          TextLiquidFill(
            text: 'CODE',
            waveColor: Colors.blueAccent.shade700,
            boxBackgroundColor: Colors.orange.shade600,
            textStyle: style,
            waveDuration: const Duration(seconds: 4),
            boxHeight: 120,
            boxWidth: 300,
          ),
          TextLiquidFill(
            text: 'MAGIC',
            waveColor: Colors.blueAccent.shade700,
            boxBackgroundColor: Colors.orange.shade600,
            textStyle: style,
            waveDuration: const Duration(seconds: 4),
            boxHeight: 120,
            boxWidth: 300,
          ),
          const SizedBox(height: 20)
        ],
      )),
    );
  }
}

const style = TextStyle(fontSize: 80, fontWeight: FontWeight.bold);
