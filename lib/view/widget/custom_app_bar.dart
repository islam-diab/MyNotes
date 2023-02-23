import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'My Notes',
            style: TextStyle(fontSize: 28),
          ),
          CustomIcon(),
        ],
      ),
    );
  }
}
