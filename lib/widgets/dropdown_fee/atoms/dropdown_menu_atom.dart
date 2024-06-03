import "package:flutter/material.dart";

class DropdownMenuAtom extends StatelessWidget {
  const DropdownMenuAtom({super.key, required this.controller});
  
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<double>(
      requestFocusOnTap: true,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0x10FFFFFF),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      expandedInsets: const EdgeInsets.symmetric(),
      hintText: "Specify it here...",
      dropdownMenuEntries: const [
        DropdownMenuEntry(value: 5.99, label: "\$5.99"),
        DropdownMenuEntry(value: 9.99, label: "\$9.99")]);
  }
}