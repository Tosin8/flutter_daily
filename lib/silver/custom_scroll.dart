import 'package:flutter/material.dart';

class Custom_Scroll extends StatelessWidget {
  const Custom_Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate.fixed([
            Container(
              height: 200,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              color: Colors.indigo,
            ),
          ]))
        ],
      ),
    );
  }
}

//
// SliverList(
//         delegate: SliverChildBuilderDelegate(
//            childCount: 20,
//             (context, index) => Container(
//                height: 100,
//                color: Colors.primaries[Random().nextInt(
//                  Colors.primaries.length,
//               )],
//             ),
//           ),
//         )

// Sliver list flavors: 
// 1. SliverAnimatedList : which animates items added to or removed from a list. 
// 2. 