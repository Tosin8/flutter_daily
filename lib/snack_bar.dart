import 'package:flutter/material.dart';

class Snack_Bar extends StatelessWidget {
  const Snack_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Example'),
      ),
      body: const Center(
          child: ElevatedButton(onPressed: (null), child: Text('Show Toast'))),
    );
  }
}
