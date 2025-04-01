import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/cubit/notes_cubit/notes_cubit.dart';
import 'package:todo_app_tharawt/models/note_model.dart';
import 'package:todo_app_tharawt/widgets/custome_color_list.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';
import 'package:todo_app_tharawt/widgets/edit_color_listview.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustomeSearchBar(
              title: 'Edit Notes',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;

                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustomeTextField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustomeTextField(
              hint: widget.note.content,
              maxLines: 10,
              onChanged: (value) {
                content = value;
              },
            ),
            SizedBox(height: 16),
            SizedBox(height: 50, child: EditColorsListView(note: widget.note)),
          ],
        ),
      ),
    );
  }
}
