import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AnimatedWidgetHelper extends StatefulWidget {
  final Widget child;

  AnimatedWidgetHelper({
    this.child,
  });

  @override
  _AnimatedWidgetHelperState createState() => _AnimatedWidgetHelperState(child);
}

class _AnimatedWidgetHelperState extends State<AnimatedWidgetHelper> {
  final Widget child;

  _AnimatedWidgetHelperState(
    this.child,
  );

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: 1,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: FadeInAnimation(
          child: child,
        ),
      ),
    );
  }
}
