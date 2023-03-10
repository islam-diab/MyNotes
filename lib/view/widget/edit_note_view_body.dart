import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/constant.dart';
import 'package:my_notes/cubit/notes_cubit/notes_cubit.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/view/widget/custom_app_bar.dart';
import 'package:my_notes/view/widget/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          50.ph,
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hitText: widget.note.title,
          ),
          16.ph,
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hitText: widget.note.subTitle,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
