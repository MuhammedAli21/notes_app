import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_tharawt/cubit/add_notes_cubit/add_note_cubit.dart';

class CustomeColorsPicker extends StatelessWidget {
  const CustomeColorsPicker({
    super.key,
    required this.isSelected,
    required this.color,
  });
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(backgroundColor: color, radius: 22),
        )
        : CircleAvatar(backgroundColor: color, radius: 22);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedIndex = 0;

  List<Color> colors = [
    Color(0xff3D8D7A),
    Color(0xffB3D8A8),
    Color(0xffFBFFE4),
    Color(0xffA3D1C6),
    Color(0xffFFE2E2),
    Color(0xffFFCFCF),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              });
            },
            child: CustomeColorsPicker(
              isSelected: selectedIndex == index,
              color: colors[index],
            ),
          ),
        );
      },
    );
  }
}
