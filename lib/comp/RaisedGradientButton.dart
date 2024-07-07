import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback onPressed;

  const RaisedGradientButton({
    required this.child,
    required this.gradient,
    this.width = 100,
    this.height = 50.0,
    this.borderRadius = 30.0, // default border radius for curved corners
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius), // Add border radius
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius), // Ensure ink effect is rounded
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}


