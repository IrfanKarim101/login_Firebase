import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass(
      {super.key,
      required this.child,
      required this.height,
      required this.width});
  final width;
  final height;
  final child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: height,
        width: width,
        color: Colors.transparent,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 7.0,
                sigmaY: 7.0,
              ),
              child: Container(),
            ),
            //gradient
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white.withOpacity(0.23)),
                gradient: LinearGradient(begin:Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.24),
                  Colors.white.withOpacity(0.13)
                ] )
              ),
            ),
            //child
            Center(
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
