import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_serach_bar.dart';
import 'package:todo_app_tharawt/widgets/edit_note_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static const String routName = 'RoutName';

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: EditNoteBody()));
  }
}
