import 'package:flutter/material.dart';

class CustomCenterLogo extends StatelessWidget {
  final double width;
  final double height;
  final String urlPath;
  const CustomCenterLogo({
    super.key,
    required this.height,
    required this.width,
    required this.urlPath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: Image.asset(urlPath),
      ),
    );
  }
}
