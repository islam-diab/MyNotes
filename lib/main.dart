import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/constant.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/simple_bloc_observer.dart';
import 'package:my_notes/view/notes_view.dart';

void main() async {
  /////***** hive 2  *//////

  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<NoteModel>(kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyNotes());
}

class MyNotes extends StatelessWidget {
  const MyNotes({Key? key}) : super(key: key);

  // const MyNotes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      ),
    );
  }
}
