import "package:flutter/material.dart";

class DropdownMenuAtom extends StatelessWidget {
  const DropdownMenuAtom({super.key, required this.trigger});
  
  final void Function(double?)? trigger;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<double>(
      onSelected: trigger,
      requestFocusOnTap: false,
      inputDecorationTheme: InputDecorationTheme(
        filled: true, fillColor: const Color(0x10FFFFFF),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      expandedInsets: const EdgeInsets.symmetric(),
      hintText: "Select from here",
      dropdownMenuEntries: const [
        DropdownMenuEntry<double>(value: 4.99, label: "\$4.99"),
        DropdownMenuEntry<double>(value: 9.99, label: "\$9.99"),
        DropdownMenuEntry<double>(value: 14.99, label: "\$14.99"),
        DropdownMenuEntry<double>(value: 19.99, label: "\$19.99"),
        DropdownMenuEntry<double>(value: 24.99, label: "\$24.99"),]);
  }
}