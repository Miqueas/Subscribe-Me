import "package:flutter/material.dart";

class BenefitInputAtom extends StatelessWidget {
  const BenefitInputAtom({super.key, required this.index, required this.controller});

  final int index;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xFFFFFFFF))),
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xAAFFFFFF))),
        hintText: "${index + 1}. Write it here...")));
  }
}