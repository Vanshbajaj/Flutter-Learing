import 'package:flutter/material.dart';

class CustomToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomToggleButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFE0000D) : Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: isSelected ? Radius.circular(18) : Radius.circular(18),
            bottomLeft: isSelected ? Radius.circular(18) : Radius.circular(18),
            topRight: !isSelected ? Radius.circular(18) : Radius.circular(18),
            bottomRight: !isSelected ? Radius.circular(18) : Radius.circular(18),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
