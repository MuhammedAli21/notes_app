import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/widgets/add_note_buttonsheet.dart';
import 'package:todo_app_tharawt/widgets/notes_view_body.dart';

class HomePage extends StatelessWidget {
  static const String routName = 'Home_Screen';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotesViewBody(),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNoteButtonSheet();
              },
            );
          },
          child: Icon(Icons.add, color: Colors.black),
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
