import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/edit_note_view_body.dart';

class EditeNote extends StatelessWidget {
  const EditeNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
