import 'package:flutter/material.dart';

class CustomFavouriteButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;

  const CustomFavouriteButton({
    super.key,
    required this.color,
    required this.height,
    required this.text,
    required this.width,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
