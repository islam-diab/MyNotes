import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_notes/constant.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/models/note_model.dart';

import 'color_list_view.dart';
import 'custom_bottom.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  /*+*/
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  /*-*/
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hitText: 'Title',
          ),
          18.ph,
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hitText: 'Content',
            maxLine: 5,
          ),
          32.ph,
          const ColorsListView(),
          64.ph,
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    DateTime currentDate = DateTime.now();
                    String formatCurrentDate =
                        DateFormat.yMd().format(currentDate);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formatCurrentDate,
                      color: kPrimaryColor.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          20.ph,
        ],
      ),
    );
  }
}
