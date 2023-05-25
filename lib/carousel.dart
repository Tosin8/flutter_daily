import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            // ignore: avoid_unnecessary_containers
            child: Container(
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        controller: _pageController,
        itemBuilder: (context, index) => animateItemBuilder(index),
      ),
    )));
  }

  animateItemBuilder(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = (_pageController.page! - index);
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: index % 2 == 0 ? Colors.lightBlue : Colors.lightGreen,
        child: const FlutterLogo(),
      ),
    );
  }
}
