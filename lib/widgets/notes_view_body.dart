import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/views/edit_note_page.dart';
import 'package:todo_app_tharawt/widgets/custome_search_icon.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNotePage.routName);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              CustomeSearchBar(title: 'Notes', icon: Icons.search),
              Expanded(child: NotesListView()),
            ],
          ),
        ),
      ),
    );
  }
}
