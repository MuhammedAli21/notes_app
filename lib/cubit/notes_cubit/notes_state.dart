part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesAdded extends NotesState {
  final List<NoteModel> notes;
  NotesAdded(this.notes);
}
