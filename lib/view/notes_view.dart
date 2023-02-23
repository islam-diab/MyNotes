import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_app_bar.dart';
import 'package:my_notes/view/widget/custom_buttom_sheet.dart';
import 'package:my_notes/view/widget/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const CustomBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          children: const [
            CustomAppBar(
              title: 'My Notes',
              icon: Icons.search_rounded,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
