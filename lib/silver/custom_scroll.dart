import 'package:flutter/material.dart';

class Custom_Scroll extends StatelessWidget {
  const Custom_Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverList(delegate: SliverChildListDelegate([]))],
      ),
    );
  }
}
