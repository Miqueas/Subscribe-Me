import "package:flutter/material.dart";

class InputAtom extends StatelessWidget {
  const InputAtom({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        maxLines: 6,
        decoration: InputDecoration(
          filled: true, fillColor: const Color(0x10FFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)))));
  }
}