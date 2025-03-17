import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/cubit/add_note_cubit.dart';
import 'package:todo_app_tharawt/models/note_model.dart';
import 'package:todo_app_tharawt/simple_bloc_observer.dart';
import 'package:todo_app_tharawt/views/edit_note_page.dart';
import 'package:todo_app_tharawt/views/home_page.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      initialRoute: HomePage.routName,
      routes: {
        HomePage.routName: (context) => HomePage(),
        EditNotePage.routName: (context) => EditNotePage(),
      },
    );
  }
}
