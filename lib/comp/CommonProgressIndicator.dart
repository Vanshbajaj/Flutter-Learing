// common_widgets.dart
import 'package:flutter/material.dart';

class CommonProgressIndicator extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final Color color;

  const CommonProgressIndicator({
    Key? key,
    required this.isLoading,
    required this.child,
    this.color = Colors.red, // Default color is red
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
          ),
      ],
    );
  }
}
