import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NeumorphicCircleView extends StatefulWidget {
  NeumorphicCircleView({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    this.shape = NeumorphicShape.convex,
    this.color,
    this.borderWidth = 5.5,
    this.depth = 8,
    this.intensity = 0.7,
    this.borderColor = const Color.fromRGBO(46, 52, 57, 1),
    this.onPressed,
  });

  final Widget child;
  final double height;
  final double width;
  final double borderWidth;
  final Color borderColor;
  final double intensity;
  final Color? color;
  final double depth;
  final NeumorphicShape shape;
  final VoidCallback? onPressed;

  @override
  State<NeumorphicCircleView> createState() => StateChild();
}

class NeumorphicCircleViewState extends State<NeumorphicCircleView>
    with StateMother {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      drawSurfaceAboveChild: false,
      style: NeumorphicStyle(
        shadowDarkColor: Colors.black.withOpacity(0.8),
        shadowLightColor: const Color.fromARGB(255, 82, 82, 82),
        depth: widget.depth,
        boxShape: const NeumorphicBoxShape.circle(),
        intensity: widget.intensity,
        surfaceIntensity: 0.2,
        shape: NeumorphicShape.concave,
      ),
      child: NeumorphicButton(
        onPressed: () {
          (widget.onPressed != null) ? widget.onPressed!() : null;
        },
        style: NeumorphicStyle(
          boxShape: const NeumorphicBoxShape.circle(),
          color: widget.color ?? const Color.fromRGBO(29, 30, 36, 1),
          border: NeumorphicBorder(
            color: widget.borderColor,
            width: widget.borderWidth,
          ),
          depth: 0,
          shape: widget.shape,
        ),
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: widget.child,
        ),
      ),
    );
  }
}

// main() async {
//   return buildApp(appHome: NeumorphicCircleView().center());
// }
