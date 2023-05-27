import 'dart:io';

import 'package:flutter/material.dart';

class Exit_App extends StatelessWidget {
  const Exit_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Close App'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => exit(0), child: const Text("Exit App")),
      ),
    );
  }
}
