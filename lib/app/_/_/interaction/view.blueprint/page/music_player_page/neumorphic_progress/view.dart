import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../neumorphic_circle/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NeumorphicProgressView extends StatefulWidget {
  NeumorphicProgressView({
    super.key,
    required this.progress,
  });

  final double progress;

  @override
  State<NeumorphicProgressView> createState() => StateChild();
}

class NeumorphicProgressViewState extends State<NeumorphicProgressView>
    with StateMother {
  @override
  Widget build(BuildContext context) {
    assert(0.0 <= widget.progress && widget.progress <= 1.0);


    return Stack(
      children: [
        Container(height: 66),
        Positioned(
          top: 30,
          child: Container(
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromRGBO(46, 52, 57, 1),
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: Container(
            width: 200 * widget.progress,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(230, 59, 16, 1),
                  Colors.yellow,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 200 *  widget.progress - 25,
          top: 18,
          height: 35,
          child: NeumorphicCircleView(
            height: 15,
            width: 15,
            child: Icon(
              Icons.circle,
              size: 12,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}

// main() async {
//   return buildApp(appHome: NeumorphicProgressView().center());
// }
