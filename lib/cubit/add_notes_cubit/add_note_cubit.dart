import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());
  Color? color = Color(0xff3D8D7A);
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    note.color = color!.toARGB32();
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      await noteBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFailure(errorMessage: e.toString()));
    }
  }
}
