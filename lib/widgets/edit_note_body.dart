import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [CustomeSearchBar(title: 'Edit Notes', icon: Icons.check)],
        ),
      ),
    );
  }
}
