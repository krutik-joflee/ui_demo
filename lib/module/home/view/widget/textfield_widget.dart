import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFebf0ff))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFebf0ff))),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF9098b1))),
    );
  }
}
