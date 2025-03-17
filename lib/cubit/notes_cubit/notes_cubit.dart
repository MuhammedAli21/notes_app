import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  addNote(NoteModel note) {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> note = noteBox.values.toList();
      emit(NotesSuccess(note: note));
    } catch (e) {
      emit(NotesFailure(errorMessage: e.toString()));
    }
  }
}
