import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 28),
          ),
          CustomIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
