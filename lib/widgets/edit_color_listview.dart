import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/Constents.dart';
import 'package:todo_app_tharawt/models/note_model.dart';
import 'package:todo_app_tharawt/widgets/custome_color_list.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorsListView> createState() => _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: kColors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.note.color = kColors[index].toARGB32();
              });
            },
            child: CustomeColorsPicker(
              isSelected: selectedIndex == index,
              color: kColors[index],
            ),
          ),
        );
      },
    );
  }
}
