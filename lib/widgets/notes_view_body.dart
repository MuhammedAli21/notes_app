import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_tharawt/cubit/notes_cubit/notes_cubit.dart';

import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomeSearchBar(title: 'Notes', icon: Icons.search),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
