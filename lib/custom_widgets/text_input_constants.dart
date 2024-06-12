import 'package:flutter/material.dart';

customTextInputField(String fieldLabelText) {

  return TextFormField(
    decoration: InputDecoration(labelText: fieldLabelText),
  );
}