import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_tharawt/cubit/notes_cubit/notes_cubit.dart';
import 'package:todo_app_tharawt/widgets/notes_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.notes.length,
              itemBuilder: (context, index) {
                return NotesCard(note: state.notes[index]);
              },
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
