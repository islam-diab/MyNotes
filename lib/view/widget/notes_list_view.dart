import 'package:flutter/cupertino.dart';
import 'package:my_notes/view/widget/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const NotesItem();
            }),
      ),
    );
  }
}
