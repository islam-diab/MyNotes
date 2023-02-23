import 'package:flutter/material.dart';
import 'package:my_notes/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hitText, this.maxLine = 1})
      : super(key: key);
  final String hitText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hitText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(
            kPrimaryColor,
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
