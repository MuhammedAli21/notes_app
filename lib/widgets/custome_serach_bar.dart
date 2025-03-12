import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_search_icon.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustomeIcon(icon: icon),
      ],
    );
  }
}
