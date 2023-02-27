import 'package:flutter/material.dart';

const kPrimaryColor = Colors.tealAccent;
const kNotesBox = 'notes_box';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());

  SizedBox get pw => SizedBox(width: toDouble());
}
