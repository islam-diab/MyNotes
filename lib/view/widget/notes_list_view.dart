import 'package:flutter/cupertino.dart';
import 'package:my_notes/view/widget/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const NotesItem();
      }),
    );
  }
}
