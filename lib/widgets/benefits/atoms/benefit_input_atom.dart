import "package:flutter/material.dart";

final class BenefitInputAtom extends StatelessWidget {
  const BenefitInputAtom({
    super.key,
    required this.index,
    required this.controller,
    this.onChanged
  });

  final int index;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: TextField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1, color: Color(0xFFFFFFFF))),
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 0.5, color: Color(0xAAFFFFFF))),
        hintText: "${index + 1}. Write it here...")));
  }
}