import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:todo_app_tharawt/cubit/add_notes_cubit/add_note_cubit.dart';
import 'package:todo_app_tharawt/models/note_model.dart';
import 'package:todo_app_tharawt/widgets/custome_button.dart';
import 'package:todo_app_tharawt/widgets/custome_color_list.dart';
import 'package:todo_app_tharawt/widgets/custome_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomeTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomeTextField(
            hint: 'Content ',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 10),
          SizedBox(height: 25 * 2, child: ColorsListView()),
          SizedBox(height: 10),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomeButton(
                isLoading: state is AddNoteCubitLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime currentDate = DateTime.now();
                    var formattedDate = DateFormat(
                      'dd-mm-yyyy',
                    ).format(currentDate);
                    NoteModel note = NoteModel(
                      title: title!,
                      content: content!,
                      date: formattedDate,
                      color:
                          BlocProvider.of<AddNoteCubit>(
                            context,
                          ).color!.toARGB32(),
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
