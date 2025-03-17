import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_tharawt/cubit/notes_cubit/notes_cubit.dart';
import 'package:todo_app_tharawt/models/note_model.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key});

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomeSearchBar(title: 'Edit Notes', icon: Icons.check),
            SizedBox(height: 50),
            CustomeTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomeTextField(hint: 'Content', maxLines: 10),
          ],
        ),
      ),
    );
  }
}
