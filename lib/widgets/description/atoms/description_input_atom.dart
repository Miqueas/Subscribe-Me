import 'package:flutter/material.dart';

class DescriptionInputAtom extends StatelessWidget {
  const DescriptionInputAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        maxLines: 6,
        decoration: InputDecoration(
          filled: true, fillColor: const Color(0x10FFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)))));
  }
}