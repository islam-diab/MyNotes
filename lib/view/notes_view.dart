import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_app_bar.dart';
import 'package:my_notes/view/widget/notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: const [
            CustomAppBar(),
            NotesItem(),
          ],
        ),
      ),
    );
  }
}
