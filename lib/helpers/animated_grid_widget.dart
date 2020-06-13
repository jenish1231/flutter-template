import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedGridWidgetBuilderHelper extends StatefulWidget {
  final Widget child;
  final int columnCount;

  AnimatedGridWidgetBuilderHelper({this.child, this.columnCount});

  @override
  _AnimatedGridWidgetBuilderHelperState createState() =>
      _AnimatedGridWidgetBuilderHelperState();
}

class _AnimatedGridWidgetBuilderHelperState
    extends State<AnimatedGridWidgetBuilderHelper> {
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      position: 1,
      duration: const Duration(milliseconds: 575),
      columnCount: widget.columnCount,
      child: ScaleAnimation(
        child: FadeInAnimation(
          child: widget.child,
        ),
      ),
    );
  }
}
