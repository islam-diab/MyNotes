import 'package:flutter/material.dart';
import 'package:my_notes/view/widget/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
      child: Column(
        children: const [
          CustomTextField(
            hitText: 'Title',
          ),
          SizedBox(
            height: 18,
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
