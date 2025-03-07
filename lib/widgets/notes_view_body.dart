import 'package:flutter/material.dart';
import 'package:todo_app_tharawt/widgets/custome_search_icon.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notes', style: TextStyle(fontSize: 28)),
                CustomeSearchIcon(),
              ],
            ),
            NotesCard(),
          ],
        ),
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  const NotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                'Note1',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Text(
                'Entering date',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
              ),
            ),
            Text('May, 12', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
