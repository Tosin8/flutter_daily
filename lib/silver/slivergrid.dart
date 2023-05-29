import 'package:flutter/material.dart';

class Sliver_App extends StatelessWidget {
  const Sliver_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SliverAppBar(
      stretch: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          'Hello Earth',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: DecoratedBox(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black45, Colors.transparent]))),
      ),
    ));
  }
}
