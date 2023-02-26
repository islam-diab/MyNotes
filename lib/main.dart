import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/constant.dart';
import 'package:my_notes/view/notes_view.dart';

void main() async {
  /////***** hive 2  *//////
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const MyNotes());
}

class MyNotes extends StatelessWidget {
  const MyNotes({Key? key}) : super(key: key);

  // const MyNotes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
