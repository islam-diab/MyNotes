import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_app_bar.dart';
import 'package:my_notes/view/widget/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: const [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.edit,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hitText: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hitText: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
