import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80)),
      child: const ListTile(
        title: Text('My frist note'),
      ),
    );
  }
}
