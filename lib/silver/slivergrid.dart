import 'package:flutter/material.dart';

class Sliver_Grid extends StatelessWidget {
  const Sliver_Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SliverGrid.count(
      crossAxisCount: 4,
      children: [
        Container(
          height: 200,
          color: Colors.amber,
        )
      ],
    ));
  }
}
