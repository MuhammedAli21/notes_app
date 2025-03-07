import 'package:flutter/material.dart';

class CustomeSearchIcon extends StatelessWidget {
  const CustomeSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(20),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(Icons.search, size: 30),
    );
  }
}
