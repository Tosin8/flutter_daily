import 'package:flutter/material.dart';

class Sliver_App extends StatelessWidget {
  const Sliver_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SliverAppBar(
      stretch: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          'Hello Earth',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: DecoratedBox(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black45, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            stops: [0.1, 1],
          )),
          child: Image.asset(
            'assets/images/pics.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}
