import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  static const String routName = 'Home_Screen';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: NotesViewBody()));
  }
}
