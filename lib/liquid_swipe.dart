import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeView extends StatelessWidget {
  const LiquidSwipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LiquidSwipe(
        pages: pages,
      ),
    );
  }
}

final pages = [
  codemagicPage,
  welcomePage,
];

)
