import "package:flutter/material.dart";

final class InputAtom extends StatelessWidget {
  const InputAtom({super.key, required this.controller, this.onChanged});

  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        controller: controller,
        maxLines: 6,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true, fillColor: const Color(0x10FFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)))));
  }
}